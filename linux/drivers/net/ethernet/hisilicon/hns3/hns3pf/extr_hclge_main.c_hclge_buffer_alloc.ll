; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_buffer_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_buffer_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_pkt_buf_alloc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"could not calc tx buffer size for all TCs %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"could not alloc tx buffers %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"could not calc rx priv buffer size for all TCs %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"could not alloc rx priv buffer %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"could not configure rx private waterline %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"could not configure common threshold %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"could not configure common waterline %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hclge_buffer_alloc(%struct.hclge_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca %struct.hclge_pkt_buf_alloc*, align 8
  %5 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.hclge_pkt_buf_alloc* @kzalloc(i32 4, i32 %6)
  store %struct.hclge_pkt_buf_alloc* %7, %struct.hclge_pkt_buf_alloc** %4, align 8
  %8 = load %struct.hclge_pkt_buf_alloc*, %struct.hclge_pkt_buf_alloc** %4, align 8
  %9 = icmp ne %struct.hclge_pkt_buf_alloc* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %114

13:                                               ; preds = %1
  %14 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %15 = load %struct.hclge_pkt_buf_alloc*, %struct.hclge_pkt_buf_alloc** %4, align 8
  %16 = call i32 @hclge_tx_buffer_calc(%struct.hclge_dev* %14, %struct.hclge_pkt_buf_alloc* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %21 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %110

26:                                               ; preds = %13
  %27 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %28 = load %struct.hclge_pkt_buf_alloc*, %struct.hclge_pkt_buf_alloc** %4, align 8
  %29 = call i32 @hclge_tx_buffer_alloc(%struct.hclge_dev* %27, %struct.hclge_pkt_buf_alloc* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %34 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %110

39:                                               ; preds = %26
  %40 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %41 = load %struct.hclge_pkt_buf_alloc*, %struct.hclge_pkt_buf_alloc** %4, align 8
  %42 = call i32 @hclge_rx_buffer_calc(%struct.hclge_dev* %40, %struct.hclge_pkt_buf_alloc* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %47 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  br label %110

52:                                               ; preds = %39
  %53 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %54 = load %struct.hclge_pkt_buf_alloc*, %struct.hclge_pkt_buf_alloc** %4, align 8
  %55 = call i32 @hclge_rx_priv_buf_alloc(%struct.hclge_dev* %53, %struct.hclge_pkt_buf_alloc* %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %60 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @dev_err(i32* %62, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  br label %110

65:                                               ; preds = %52
  %66 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %67 = call i64 @hnae3_dev_dcb_supported(%struct.hclge_dev* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %96

69:                                               ; preds = %65
  %70 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %71 = load %struct.hclge_pkt_buf_alloc*, %struct.hclge_pkt_buf_alloc** %4, align 8
  %72 = call i32 @hclge_rx_priv_wl_config(%struct.hclge_dev* %70, %struct.hclge_pkt_buf_alloc* %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %77 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @dev_err(i32* %79, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  br label %110

82:                                               ; preds = %69
  %83 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %84 = load %struct.hclge_pkt_buf_alloc*, %struct.hclge_pkt_buf_alloc** %4, align 8
  %85 = call i32 @hclge_common_thrd_config(%struct.hclge_dev* %83, %struct.hclge_pkt_buf_alloc* %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %90 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @dev_err(i32* %92, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %93)
  br label %110

95:                                               ; preds = %82
  br label %96

96:                                               ; preds = %95, %65
  %97 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %98 = load %struct.hclge_pkt_buf_alloc*, %struct.hclge_pkt_buf_alloc** %4, align 8
  %99 = call i32 @hclge_common_wl_config(%struct.hclge_dev* %97, %struct.hclge_pkt_buf_alloc* %98)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %96
  %103 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %104 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @dev_err(i32* %106, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %102, %96
  br label %110

110:                                              ; preds = %109, %88, %75, %58, %45, %32, %19
  %111 = load %struct.hclge_pkt_buf_alloc*, %struct.hclge_pkt_buf_alloc** %4, align 8
  %112 = call i32 @kfree(%struct.hclge_pkt_buf_alloc* %111)
  %113 = load i32, i32* %5, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %110, %10
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local %struct.hclge_pkt_buf_alloc* @kzalloc(i32, i32) #1

declare dso_local i32 @hclge_tx_buffer_calc(%struct.hclge_dev*, %struct.hclge_pkt_buf_alloc*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @hclge_tx_buffer_alloc(%struct.hclge_dev*, %struct.hclge_pkt_buf_alloc*) #1

declare dso_local i32 @hclge_rx_buffer_calc(%struct.hclge_dev*, %struct.hclge_pkt_buf_alloc*) #1

declare dso_local i32 @hclge_rx_priv_buf_alloc(%struct.hclge_dev*, %struct.hclge_pkt_buf_alloc*) #1

declare dso_local i64 @hnae3_dev_dcb_supported(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_rx_priv_wl_config(%struct.hclge_dev*, %struct.hclge_pkt_buf_alloc*) #1

declare dso_local i32 @hclge_common_thrd_config(%struct.hclge_dev*, %struct.hclge_pkt_buf_alloc*) #1

declare dso_local i32 @hclge_common_wl_config(%struct.hclge_dev*, %struct.hclge_pkt_buf_alloc*) #1

declare dso_local i32 @kfree(%struct.hclge_pkt_buf_alloc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
