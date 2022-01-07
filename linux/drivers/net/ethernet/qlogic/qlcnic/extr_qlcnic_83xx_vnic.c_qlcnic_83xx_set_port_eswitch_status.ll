; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_vnic.c_qlcnic_83xx_set_port_eswitch_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_vnic.c_qlcnic_83xx_set_port_eswitch_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.qlcnic_info = type { i32, i32 }

@QLC_83XX_ESWITCH_CAPABILITY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@QLCNIC_SWITCH_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_set_port_eswitch_status(%struct.qlcnic_adapter* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.qlcnic_info, align 4
  %9 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = call i32 @memset(%struct.qlcnic_info* %8, i32 0, i32 8)
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @qlcnic_get_nic_info(%struct.qlcnic_adapter* %11, %struct.qlcnic_info* %8, i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %4, align 4
  br label %48

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %8, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @QLC_83XX_ESWITCH_CAPABILITY, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %8, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %7, align 8
  store i32 %26, i32* %27, align 4
  br label %31

28:                                               ; preds = %18
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %28, %24
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* @QLCNIC_SWITCH_ENABLE, align 4
  %36 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %37 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %35
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %34, %31
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %46, %16
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @memset(%struct.qlcnic_info*, i32, i32) #1

declare dso_local i32 @qlcnic_get_nic_info(%struct.qlcnic_adapter*, %struct.qlcnic_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
