; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303-core.c_lan9303_register_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303-core.c_lan9303_register_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan9303 = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32*, %struct.lan9303* }

@LAN9303_NUM_PORTS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lan9303_switch_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan9303*)* @lan9303_register_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan9303_register_switch(%struct.lan9303* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lan9303*, align 8
  %4 = alloca i32, align 4
  store %struct.lan9303* %0, %struct.lan9303** %3, align 8
  %5 = load %struct.lan9303*, %struct.lan9303** %3, align 8
  %6 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @LAN9303_NUM_PORTS, align 4
  %9 = call %struct.TYPE_3__* @dsa_switch_alloc(i32 %7, i32 %8)
  %10 = load %struct.lan9303*, %struct.lan9303** %3, align 8
  %11 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %10, i32 0, i32 1
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %11, align 8
  %12 = load %struct.lan9303*, %struct.lan9303** %3, align 8
  %13 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %46

19:                                               ; preds = %1
  %20 = load %struct.lan9303*, %struct.lan9303** %3, align 8
  %21 = load %struct.lan9303*, %struct.lan9303** %3, align 8
  %22 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  store %struct.lan9303* %20, %struct.lan9303** %24, align 8
  %25 = load %struct.lan9303*, %struct.lan9303** %3, align 8
  %26 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i32* @lan9303_switch_ops, i32** %28, align 8
  %29 = load %struct.lan9303*, %struct.lan9303** %3, align 8
  %30 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* @LAN9303_NUM_PORTS, align 4
  %33 = sub nsw i32 %32, 1
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %33, %34
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @GENMASK(i32 %35, i32 %36)
  %38 = load %struct.lan9303*, %struct.lan9303** %3, align 8
  %39 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 8
  %42 = load %struct.lan9303*, %struct.lan9303** %3, align 8
  %43 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = call i32 @dsa_register_switch(%struct.TYPE_3__* %44)
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %19, %16
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.TYPE_3__* @dsa_switch_alloc(i32, i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @dsa_register_switch(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
