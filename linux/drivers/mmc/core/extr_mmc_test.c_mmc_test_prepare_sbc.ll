; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_prepare_sbc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_prepare_sbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_test_card = type { %struct.mmc_card* }
%struct.mmc_card = type { i32, i32 }
%struct.mmc_request = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@MMC_QUIRK_BLK_NO_CMD23 = common dso_local global i32 0, align 4
@MMC_SET_BLOCK_COUNT = common dso_local global i32 0, align 4
@MMC_RSP_R1 = common dso_local global i32 0, align 4
@MMC_CMD_AC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_test_card*, %struct.mmc_request*, i32)* @mmc_test_prepare_sbc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_test_prepare_sbc(%struct.mmc_test_card* %0, %struct.mmc_request* %1, i32 %2) #0 {
  %4 = alloca %struct.mmc_test_card*, align 8
  %5 = alloca %struct.mmc_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmc_card*, align 8
  store %struct.mmc_test_card* %0, %struct.mmc_test_card** %4, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mmc_test_card*, %struct.mmc_test_card** %4, align 8
  %9 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %8, i32 0, i32 0
  %10 = load %struct.mmc_card*, %struct.mmc_card** %9, align 8
  store %struct.mmc_card* %10, %struct.mmc_card** %7, align 8
  %11 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %12 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %40

15:                                               ; preds = %3
  %16 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %17 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mmc_host_cmd23(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %15
  %22 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %23 = call i32 @mmc_test_card_cmd23(%struct.mmc_card* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %27 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mmc_op_multi(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %25
  %34 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %35 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MMC_QUIRK_BLK_NO_CMD23, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33, %25, %21, %15, %3
  %41 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %42 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %41, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %42, align 8
  br label %61

43:                                               ; preds = %33
  %44 = load i32, i32* @MMC_SET_BLOCK_COUNT, align 4
  %45 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %46 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  store i32 %44, i32* %48, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %51 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 4
  %54 = load i32, i32* @MMC_RSP_R1, align 4
  %55 = load i32, i32* @MMC_CMD_AC, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %58 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store i32 %56, i32* %60, align 4
  br label %61

61:                                               ; preds = %43, %40
  ret void
}

declare dso_local i32 @mmc_host_cmd23(i32) #1

declare dso_local i32 @mmc_test_card_cmd23(%struct.mmc_card*) #1

declare dso_local i32 @mmc_op_multi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
