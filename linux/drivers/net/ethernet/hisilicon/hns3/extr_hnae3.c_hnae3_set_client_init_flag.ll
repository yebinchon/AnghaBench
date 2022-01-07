; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hnae3.c_hnae3_set_client_init_flag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hnae3.c_hnae3_set_client_init_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_client = type { i32 }
%struct.hnae3_ae_dev = type { i32 }

@HNAE3_KNIC_CLIENT_INITED_B = common dso_local global i32 0, align 4
@HNAE3_ROCE_CLIENT_INITED_B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hnae3_set_client_init_flag(%struct.hnae3_client* %0, %struct.hnae3_ae_dev* %1, i32 %2) #0 {
  %4 = alloca %struct.hnae3_client*, align 8
  %5 = alloca %struct.hnae3_ae_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.hnae3_client* %0, %struct.hnae3_client** %4, align 8
  store %struct.hnae3_ae_dev* %1, %struct.hnae3_ae_dev** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.hnae3_client*, %struct.hnae3_client** %4, align 8
  %8 = icmp ne %struct.hnae3_client* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %5, align 8
  %11 = icmp ne %struct.hnae3_ae_dev* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %3
  br label %32

13:                                               ; preds = %9
  %14 = load %struct.hnae3_client*, %struct.hnae3_client** %4, align 8
  %15 = getelementptr inbounds %struct.hnae3_client, %struct.hnae3_client* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %31 [
    i32 129, label %17
    i32 128, label %24
  ]

17:                                               ; preds = %13
  %18 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %5, align 8
  %19 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @HNAE3_KNIC_CLIENT_INITED_B, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @hnae3_set_bit(i32 %20, i32 %21, i32 %22)
  br label %32

24:                                               ; preds = %13
  %25 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %5, align 8
  %26 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @HNAE3_ROCE_CLIENT_INITED_B, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @hnae3_set_bit(i32 %27, i32 %28, i32 %29)
  br label %32

31:                                               ; preds = %13
  br label %32

32:                                               ; preds = %12, %31, %24, %17
  ret void
}

declare dso_local i32 @hnae3_set_bit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
