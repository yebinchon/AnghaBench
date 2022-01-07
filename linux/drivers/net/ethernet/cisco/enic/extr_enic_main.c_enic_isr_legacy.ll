; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_isr_legacy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_isr_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.enic = type { i32*, i32*, i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @enic_isr_legacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enic_isr_legacy(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.enic*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.net_device*
  store %struct.net_device* %13, %struct.net_device** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.enic* @netdev_priv(%struct.net_device* %14)
  store %struct.enic* %15, %struct.enic** %7, align 8
  %16 = call i32 (...) @enic_legacy_io_intr()
  store i32 %16, i32* %8, align 4
  %17 = call i32 (...) @enic_legacy_err_intr()
  store i32 %17, i32* %9, align 4
  %18 = call i32 (...) @enic_legacy_notify_intr()
  store i32 %18, i32* %10, align 4
  %19 = load %struct.enic*, %struct.enic** %7, align 8
  %20 = getelementptr inbounds %struct.enic, %struct.enic* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = call i32 @vnic_intr_mask(i32* %24)
  %26 = load %struct.enic*, %struct.enic** %7, align 8
  %27 = getelementptr inbounds %struct.enic, %struct.enic* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @vnic_intr_legacy_pba(i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %2
  %33 = load %struct.enic*, %struct.enic** %7, align 8
  %34 = getelementptr inbounds %struct.enic, %struct.enic* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = call i32 @vnic_intr_unmask(i32* %38)
  %40 = load i32, i32* @IRQ_NONE, align 4
  store i32 %40, i32* %3, align 4
  br label %96

41:                                               ; preds = %2
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i64 @ENIC_TEST_INTR(i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load %struct.enic*, %struct.enic** %7, align 8
  %48 = call i32 @enic_notify_check(%struct.enic* %47)
  %49 = load %struct.enic*, %struct.enic** %7, align 8
  %50 = getelementptr inbounds %struct.enic, %struct.enic* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = call i32 @vnic_intr_return_all_credits(i32* %54)
  br label %56

56:                                               ; preds = %46, %41
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i64 @ENIC_TEST_INTR(i32 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %56
  %62 = load %struct.enic*, %struct.enic** %7, align 8
  %63 = getelementptr inbounds %struct.enic, %struct.enic* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = call i32 @vnic_intr_return_all_credits(i32* %67)
  %69 = load %struct.enic*, %struct.enic** %7, align 8
  %70 = call i32 @enic_log_q_error(%struct.enic* %69)
  %71 = load %struct.enic*, %struct.enic** %7, align 8
  %72 = getelementptr inbounds %struct.enic, %struct.enic* %71, i32 0, i32 2
  %73 = call i32 @schedule_work(i32* %72)
  %74 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %74, i32* %3, align 4
  br label %96

75:                                               ; preds = %56
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i64 @ENIC_TEST_INTR(i32 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load %struct.enic*, %struct.enic** %7, align 8
  %82 = getelementptr inbounds %struct.enic, %struct.enic* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = call i32 @napi_schedule_irqoff(i32* %84)
  br label %94

86:                                               ; preds = %75
  %87 = load %struct.enic*, %struct.enic** %7, align 8
  %88 = getelementptr inbounds %struct.enic, %struct.enic* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = call i32 @vnic_intr_unmask(i32* %92)
  br label %94

94:                                               ; preds = %86, %80
  %95 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %94, %61, %32
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.enic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @enic_legacy_io_intr(...) #1

declare dso_local i32 @enic_legacy_err_intr(...) #1

declare dso_local i32 @enic_legacy_notify_intr(...) #1

declare dso_local i32 @vnic_intr_mask(i32*) #1

declare dso_local i32 @vnic_intr_legacy_pba(i32) #1

declare dso_local i32 @vnic_intr_unmask(i32*) #1

declare dso_local i64 @ENIC_TEST_INTR(i32, i32) #1

declare dso_local i32 @enic_notify_check(%struct.enic*) #1

declare dso_local i32 @vnic_intr_return_all_credits(i32*) #1

declare dso_local i32 @enic_log_q_error(%struct.enic*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @napi_schedule_irqoff(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
