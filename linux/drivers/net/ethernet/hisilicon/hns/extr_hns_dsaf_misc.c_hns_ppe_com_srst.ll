; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_misc.c_hns_ppe_com_srst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_misc.c_hns_ppe_com_srst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsaf_device = type { i32, i32 }

@RESET_REQ_OR_DREQ = common dso_local global i32 0, align 4
@DSAF_SUB_SC_RCB_PPE_COM_RESET_REQ_REG = common dso_local global i32 0, align 4
@DSAF_SUB_SC_RCB_PPE_COM_RESET_DREQ_REG = common dso_local global i32 0, align 4
@DSAF_SUB_SC_PPE_RESET_REQ_REG = common dso_local global i32 0, align 4
@DSAF_SUB_SC_PPE_RESET_DREQ_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsaf_device*, i32)* @hns_ppe_com_srst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_ppe_com_srst(%struct.dsaf_device* %0, i32 %1) #0 {
  %3 = alloca %struct.dsaf_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dsaf_device* %0, %struct.dsaf_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %8 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @dev_of_node(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %43

13:                                               ; preds = %2
  %14 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %15 = call i32 @HNS_DSAF_IS_DEBUG(%struct.dsaf_device* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @RESET_REQ_OR_DREQ, align 4
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @DSAF_SUB_SC_RCB_PPE_COM_RESET_REQ_REG, align 4
  store i32 %22, i32* %6, align 4
  br label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @DSAF_SUB_SC_RCB_PPE_COM_RESET_DREQ_REG, align 4
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %23, %21
  br label %38

26:                                               ; preds = %13
  %27 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %28 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 256, %29
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @DSAF_SUB_SC_PPE_RESET_REQ_REG, align 4
  store i32 %34, i32* %6, align 4
  br label %37

35:                                               ; preds = %26
  %36 = load i32, i32* @DSAF_SUB_SC_PPE_RESET_DREQ_REG, align 4
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %35, %33
  br label %38

38:                                               ; preds = %37, %25
  %39 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @dsaf_write_sub(%struct.dsaf_device* %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %38, %12
  ret void
}

declare dso_local i32 @dev_of_node(i32) #1

declare dso_local i32 @HNS_DSAF_IS_DEBUG(%struct.dsaf_device*) #1

declare dso_local i32 @dsaf_write_sub(%struct.dsaf_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
