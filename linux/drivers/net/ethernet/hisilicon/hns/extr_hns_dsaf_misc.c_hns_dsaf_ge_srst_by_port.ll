; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_misc.c_hns_dsaf_ge_srst_by_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_misc.c_hns_dsaf_ge_srst_by_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsaf_device = type { i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@DSAF_GE_NUM = common dso_local global i32 0, align 4
@DSAF_SUB_SC_GE_RESET_REQ1_REG = common dso_local global i32 0, align 4
@DSAF_SUB_SC_GE_RESET_REQ0_REG = common dso_local global i32 0, align 4
@DSAF_SUB_SC_GE_RESET_DREQ0_REG = common dso_local global i32 0, align 4
@DSAF_SUB_SC_GE_RESET_DREQ1_REG = common dso_local global i32 0, align 4
@DSAF_SUB_SC_PPE_RESET_REQ_REG = common dso_local global i32 0, align 4
@DSAF_SUB_SC_PPE_RESET_DREQ_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsaf_device*, i32, i32)* @hns_dsaf_ge_srst_by_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_dsaf_ge_srst_by_port(%struct.dsaf_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dsaf_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dsaf_device* %0, %struct.dsaf_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @DSAF_GE_NUM, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %100

14:                                               ; preds = %3
  %15 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %16 = call i32 @HNS_DSAF_IS_DEBUG(%struct.dsaf_device* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %61, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = shl i32 1, %19
  store i32 %20, i32* %7, align 4
  %21 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %22 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %23, i64 %25
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %31 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @AE_IS_VER1(i32 %32)
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 17043521, i32 34087042
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = shl i32 %38, %37
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %18
  %43 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %44 = load i32, i32* @DSAF_SUB_SC_GE_RESET_REQ1_REG, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @dsaf_write_sub(%struct.dsaf_device* %43, i32 %44, i32 %45)
  %47 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %48 = load i32, i32* @DSAF_SUB_SC_GE_RESET_REQ0_REG, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @dsaf_write_sub(%struct.dsaf_device* %47, i32 %48, i32 %49)
  br label %60

51:                                               ; preds = %18
  %52 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %53 = load i32, i32* @DSAF_SUB_SC_GE_RESET_DREQ0_REG, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @dsaf_write_sub(%struct.dsaf_device* %52, i32 %53, i32 %54)
  %56 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %57 = load i32, i32* @DSAF_SUB_SC_GE_RESET_DREQ1_REG, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @dsaf_write_sub(%struct.dsaf_device* %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %51, %42
  br label %100

61:                                               ; preds = %14
  store i32 87360, i32* %7, align 4
  %62 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %63 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @AE_IS_VER1(i32 %64)
  %66 = icmp ne i64 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 256, i32 64
  store i32 %68, i32* %8, align 4
  %69 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %70 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = shl i32 %72, %71
  store i32 %73, i32* %7, align 4
  %74 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %75 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = shl i32 %77, %76
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %90, label %81

81:                                               ; preds = %61
  %82 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %83 = load i32, i32* @DSAF_SUB_SC_GE_RESET_REQ1_REG, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @dsaf_write_sub(%struct.dsaf_device* %82, i32 %83, i32 %84)
  %86 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %87 = load i32, i32* @DSAF_SUB_SC_PPE_RESET_REQ_REG, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @dsaf_write_sub(%struct.dsaf_device* %86, i32 %87, i32 %88)
  br label %99

90:                                               ; preds = %61
  %91 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %92 = load i32, i32* @DSAF_SUB_SC_GE_RESET_DREQ1_REG, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @dsaf_write_sub(%struct.dsaf_device* %91, i32 %92, i32 %93)
  %95 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %96 = load i32, i32* @DSAF_SUB_SC_PPE_RESET_DREQ_REG, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @dsaf_write_sub(%struct.dsaf_device* %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %90, %81
  br label %100

100:                                              ; preds = %13, %99, %60
  ret void
}

declare dso_local i32 @HNS_DSAF_IS_DEBUG(%struct.dsaf_device*) #1

declare dso_local i64 @AE_IS_VER1(i32) #1

declare dso_local i32 @dsaf_write_sub(%struct.dsaf_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
