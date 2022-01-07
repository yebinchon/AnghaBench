; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_do_s2io_restore_unicast_mc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_do_s2io_restore_unicast_mc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2io_nic = type { %struct.TYPE_2__*, i32, %struct.config_param }
%struct.TYPE_2__ = type { i32 }
%struct.config_param = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s2io_nic*)* @do_s2io_restore_unicast_mc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_s2io_restore_unicast_mc(%struct.s2io_nic* %0) #0 {
  %2 = alloca %struct.s2io_nic*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.config_param*, align 8
  store %struct.s2io_nic* %0, %struct.s2io_nic** %2, align 8
  %5 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %6 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %5, i32 0, i32 2
  store %struct.config_param* %6, %struct.config_param** %4, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %26, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.config_param*, %struct.config_param** %4, align 8
  %10 = getelementptr inbounds %struct.config_param, %struct.config_param* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %7
  %14 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %15 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %18 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @do_s2io_prog_unicast(i32 %16, i32 %24)
  br label %26

26:                                               ; preds = %13
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %7

29:                                               ; preds = %7
  %30 = load %struct.config_param*, %struct.config_param** %4, align 8
  %31 = getelementptr inbounds %struct.config_param, %struct.config_param* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %50, %29
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.config_param*, %struct.config_param** %4, align 8
  %36 = getelementptr inbounds %struct.config_param, %struct.config_param* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %33
  %40 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %41 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %42 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @do_s2io_add_mc(%struct.s2io_nic* %40, i32 %48)
  br label %50

50:                                               ; preds = %39
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %33

53:                                               ; preds = %33
  ret void
}

declare dso_local i32 @do_s2io_prog_unicast(i32, i32) #1

declare dso_local i32 @do_s2io_add_mc(%struct.s2io_nic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
