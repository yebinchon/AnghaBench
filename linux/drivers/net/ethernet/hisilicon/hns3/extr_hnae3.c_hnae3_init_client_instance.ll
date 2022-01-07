; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hnae3.c_hnae3_init_client_instance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hnae3.c_hnae3_init_client_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_client = type { i32 }
%struct.hnae3_ae_dev = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { {}* }

@HNAE3_DEV_INITED_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"fail to instantiate client, ret = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_client*, %struct.hnae3_ae_dev*)* @hnae3_init_client_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hnae3_init_client_instance(%struct.hnae3_client* %0, %struct.hnae3_ae_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hnae3_client*, align 8
  %5 = alloca %struct.hnae3_ae_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.hnae3_client* %0, %struct.hnae3_client** %4, align 8
  store %struct.hnae3_ae_dev* %1, %struct.hnae3_ae_dev** %5, align 8
  %7 = load %struct.hnae3_client*, %struct.hnae3_client** %4, align 8
  %8 = getelementptr inbounds %struct.hnae3_client, %struct.hnae3_client* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @hnae3_client_match(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %5, align 8
  %14 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @HNAE3_DEV_INITED_B, align 4
  %17 = call i64 @hnae3_get_bit(i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %41

20:                                               ; preds = %12
  %21 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %5, align 8
  %22 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = bitcast {}** %24 to i32 (%struct.hnae3_client*, %struct.hnae3_ae_dev*)**
  %26 = load i32 (%struct.hnae3_client*, %struct.hnae3_ae_dev*)*, i32 (%struct.hnae3_client*, %struct.hnae3_ae_dev*)** %25, align 8
  %27 = load %struct.hnae3_client*, %struct.hnae3_client** %4, align 8
  %28 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %5, align 8
  %29 = call i32 %26(%struct.hnae3_client* %27, %struct.hnae3_ae_dev* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %20
  %33 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %5, align 8
  %34 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %32, %20
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %19
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @hnae3_client_match(i32) #1

declare dso_local i64 @hnae3_get_bit(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
