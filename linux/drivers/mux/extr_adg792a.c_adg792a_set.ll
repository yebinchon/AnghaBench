; ModuleID = '/home/carl/AnghaBench/linux/drivers/mux/extr_adg792a.c_adg792a_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mux/extr_adg792a.c_adg792a_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mux_control = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.i2c_client = type { i32 }

@MUX_IDLE_DISCONNECT = common dso_local global i32 0, align 4
@ADG792A_DISABLE_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mux_control*, i32)* @adg792a_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adg792a_set(%struct.mux_control* %0, i32 %1) #0 {
  %3 = alloca %struct.mux_control*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mux_control* %0, %struct.mux_control** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mux_control*, %struct.mux_control** %3, align 8
  %9 = getelementptr inbounds %struct.mux_control, %struct.mux_control* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.i2c_client* @to_i2c_client(i32 %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %5, align 8
  %15 = load %struct.mux_control*, %struct.mux_control** %3, align 8
  %16 = getelementptr inbounds %struct.mux_control, %struct.mux_control* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %31

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @MUX_IDLE_DISCONNECT, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @ADG792A_DISABLE_ALL, align 4
  store i32 %26, i32* %6, align 4
  br label %30

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @ADG792A_MUX_ALL(i32 %28)
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %27, %25
  br label %45

31:                                               ; preds = %2
  %32 = load %struct.mux_control*, %struct.mux_control** %3, align 8
  %33 = call i32 @mux_control_get_index(%struct.mux_control* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @MUX_IDLE_DISCONNECT, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @ADG792A_DISABLE(i32 %38)
  store i32 %39, i32* %6, align 4
  br label %44

40:                                               ; preds = %31
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @ADG792A_MUX(i32 %41, i32 %42)
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %40, %37
  br label %45

45:                                               ; preds = %44, %30
  %46 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @adg792a_write_cmd(%struct.i2c_client* %46, i32 %47, i32 0)
  ret i32 %48
}

declare dso_local %struct.i2c_client* @to_i2c_client(i32) #1

declare dso_local i32 @ADG792A_MUX_ALL(i32) #1

declare dso_local i32 @mux_control_get_index(%struct.mux_control*) #1

declare dso_local i32 @ADG792A_DISABLE(i32) #1

declare dso_local i32 @ADG792A_MUX(i32, i32) #1

declare dso_local i32 @adg792a_write_cmd(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
