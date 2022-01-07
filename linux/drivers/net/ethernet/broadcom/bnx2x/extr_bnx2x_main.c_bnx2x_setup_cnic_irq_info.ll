; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_setup_cnic_irq_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_setup_cnic_irq_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i8*, %struct.TYPE_5__, %struct.TYPE_4__*, %struct.cnic_eth_dev }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.cnic_eth_dev = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32, i8*, i32, i32 }

@USING_MSIX_FLAG = common dso_local global i32 0, align 4
@CNIC_DRV_STATE_USING_MSIX = common dso_local global i32 0, align 4
@CNIC_IRQ_FL_MSIX = common dso_local global i32 0, align 4
@DEF_SB_ID = common dso_local global i32 0, align 4
@DEF_SB_IGU_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_setup_cnic_irq_info(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca %struct.cnic_eth_dev*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %4 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %5 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %4, i32 0, i32 4
  store %struct.cnic_eth_dev* %5, %struct.cnic_eth_dev** %3, align 8
  %6 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %7 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @USING_MSIX_FLAG, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %1
  %13 = load i32, i32* @CNIC_DRV_STATE_USING_MSIX, align 4
  %14 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %3, align 8
  %15 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load i32, i32* @CNIC_IRQ_FL_MSIX, align 4
  %19 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %3, align 8
  %20 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %18
  store i32 %25, i32* %23, align 8
  %26 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %27 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %26, i32 0, i32 3
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %3, align 8
  %33 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 4
  store i32 %31, i32* %36, align 4
  br label %53

37:                                               ; preds = %1
  %38 = load i32, i32* @CNIC_DRV_STATE_USING_MSIX, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %3, align 8
  %41 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load i32, i32* @CNIC_IRQ_FL_MSIX, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %3, align 8
  %47 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, %45
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %37, %12
  %54 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %55 = call i32 @CHIP_IS_E1x(%struct.bnx2x* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %53
  %58 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %59 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %3, align 8
  %64 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  store i8* %62, i8** %67, align 8
  br label %79

68:                                               ; preds = %53
  %69 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %70 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i8*
  %74 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %3, align 8
  %75 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %74, i32 0, i32 1
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  store i8* %73, i8** %78, align 8
  br label %79

79:                                               ; preds = %68, %57
  %80 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %81 = call i32 @bnx2x_cnic_fw_sb_id(%struct.bnx2x* %80)
  %82 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %3, align 8
  %83 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  store i32 %81, i32* %86, align 4
  %87 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %88 = call i32 @bnx2x_cnic_igu_sb_id(%struct.bnx2x* %87)
  %89 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %3, align 8
  %90 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  store i32 %88, i32* %93, align 8
  %94 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %95 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %3, align 8
  %98 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %97, i32 0, i32 1
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 2
  store i8* %96, i8** %101, align 8
  %102 = load i32, i32* @DEF_SB_ID, align 4
  %103 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %3, align 8
  %104 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %103, i32 0, i32 1
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i64 1
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  store i32 %102, i32* %107, align 4
  %108 = load i32, i32* @DEF_SB_IGU_ID, align 4
  %109 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %3, align 8
  %110 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %109, i32 0, i32 1
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i64 1
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  store i32 %108, i32* %113, align 8
  %114 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %3, align 8
  %115 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %114, i32 0, i32 0
  store i32 2, i32* %115, align 8
  ret void
}

declare dso_local i32 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_cnic_fw_sb_id(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_cnic_igu_sb_id(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
