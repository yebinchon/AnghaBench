; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_ethtool.c_ena_set_rxfh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_ethtool.c_ena_set_rxfh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ena_adapter = type { %struct.ena_com_dev* }
%struct.ena_com_dev = type { i32 }

@ENA_RX_RSS_TABLE_SIZE = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Cannot fill indirect table (index is too large)\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Cannot set indirect table\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENA_ADMIN_TOEPLITZ = common dso_local global i32 0, align 4
@ENA_ADMIN_CRC32 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Unsupported hfunc %d\0A\00", align 1
@ENA_HASH_KEY_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Cannot fill key\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*, i32*, i32)* @ena_set_rxfh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_set_rxfh(%struct.net_device* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ena_adapter*, align 8
  %11 = alloca %struct.ena_com_dev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call %struct.ena_adapter* @netdev_priv(%struct.net_device* %15)
  store %struct.ena_adapter* %16, %struct.ena_adapter** %10, align 8
  %17 = load %struct.ena_adapter*, %struct.ena_adapter** %10, align 8
  %18 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %17, i32 0, i32 0
  %19 = load %struct.ena_com_dev*, %struct.ena_com_dev** %18, align 8
  store %struct.ena_com_dev* %19, %struct.ena_com_dev** %11, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %72

22:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  br label %23

23:                                               ; preds = %47, %22
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* @ENA_RX_RSS_TABLE_SIZE, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %23
  %28 = load %struct.ena_com_dev*, %struct.ena_com_dev** %11, align 8
  %29 = load i32, i32* %14, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %14, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ENA_IO_RXQ_IDX(i32 %34)
  %36 = call i32 @ena_com_indirect_table_fill_entry(%struct.ena_com_dev* %28, i32 %29, i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %27
  %41 = load %struct.ena_adapter*, %struct.ena_adapter** %10, align 8
  %42 = load i32, i32* @drv, align 4
  %43 = load %struct.net_device*, %struct.net_device** %6, align 8
  %44 = call i32 (%struct.ena_adapter*, i32, %struct.net_device*, i8*, ...) @netif_err(%struct.ena_adapter* %41, i32 %42, %struct.net_device* %43, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* %13, align 4
  store i32 %45, i32* %5, align 4
  br label %116

46:                                               ; preds = %27
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %14, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %14, align 4
  br label %23

50:                                               ; preds = %23
  %51 = load %struct.ena_com_dev*, %struct.ena_com_dev** %11, align 8
  %52 = call i32 @ena_com_indirect_table_set(%struct.ena_com_dev* %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %50
  %56 = load %struct.ena_adapter*, %struct.ena_adapter** %10, align 8
  %57 = load i32, i32* @drv, align 4
  %58 = load %struct.net_device*, %struct.net_device** %6, align 8
  %59 = call i32 (%struct.ena_adapter*, i32, %struct.net_device*, i8*, ...) @netif_err(%struct.ena_adapter* %56, i32 %57, %struct.net_device* %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @EPERM, align 4
  %62 = sub nsw i32 0, %61
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load i32, i32* @EOPNOTSUPP, align 4
  %66 = sub nsw i32 0, %65
  br label %69

67:                                               ; preds = %55
  %68 = load i32, i32* %13, align 4
  br label %69

69:                                               ; preds = %67, %64
  %70 = phi i32 [ %66, %64 ], [ %68, %67 ]
  store i32 %70, i32* %5, align 4
  br label %116

71:                                               ; preds = %50
  br label %72

72:                                               ; preds = %71, %4
  %73 = load i32, i32* %9, align 4
  switch i32 %73, label %78 [
    i32 129, label %74
    i32 128, label %76
  ]

74:                                               ; preds = %72
  %75 = load i32, i32* @ENA_ADMIN_TOEPLITZ, align 4
  store i32 %75, i32* %12, align 4
  br label %86

76:                                               ; preds = %72
  %77 = load i32, i32* @ENA_ADMIN_CRC32, align 4
  store i32 %77, i32* %12, align 4
  br label %86

78:                                               ; preds = %72
  %79 = load %struct.ena_adapter*, %struct.ena_adapter** %10, align 8
  %80 = load i32, i32* @drv, align 4
  %81 = load %struct.net_device*, %struct.net_device** %6, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i32 (%struct.ena_adapter*, i32, %struct.net_device*, i8*, ...) @netif_err(%struct.ena_adapter* %79, i32 %80, %struct.net_device* %81, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @EOPNOTSUPP, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %5, align 4
  br label %116

86:                                               ; preds = %76, %74
  %87 = load i32*, i32** %8, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %115

89:                                               ; preds = %86
  %90 = load %struct.ena_com_dev*, %struct.ena_com_dev** %11, align 8
  %91 = load i32, i32* %12, align 4
  %92 = load i32*, i32** %8, align 8
  %93 = load i32, i32* @ENA_HASH_KEY_SIZE, align 4
  %94 = call i32 @ena_com_fill_hash_function(%struct.ena_com_dev* %90, i32 %91, i32* %92, i32 %93, i32 -1)
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i64 @unlikely(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %114

98:                                               ; preds = %89
  %99 = load %struct.ena_adapter*, %struct.ena_adapter** %10, align 8
  %100 = load i32, i32* @drv, align 4
  %101 = load %struct.net_device*, %struct.net_device** %6, align 8
  %102 = call i32 (%struct.ena_adapter*, i32, %struct.net_device*, i8*, ...) @netif_err(%struct.ena_adapter* %99, i32 %100, %struct.net_device* %101, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* @EPERM, align 4
  %105 = sub nsw i32 0, %104
  %106 = icmp eq i32 %103, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %98
  %108 = load i32, i32* @EOPNOTSUPP, align 4
  %109 = sub nsw i32 0, %108
  br label %112

110:                                              ; preds = %98
  %111 = load i32, i32* %13, align 4
  br label %112

112:                                              ; preds = %110, %107
  %113 = phi i32 [ %109, %107 ], [ %111, %110 ]
  store i32 %113, i32* %5, align 4
  br label %116

114:                                              ; preds = %89
  br label %115

115:                                              ; preds = %114, %86
  store i32 0, i32* %5, align 4
  br label %116

116:                                              ; preds = %115, %112, %78, %69, %40
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local %struct.ena_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ena_com_indirect_table_fill_entry(%struct.ena_com_dev*, i32, i32) #1

declare dso_local i32 @ENA_IO_RXQ_IDX(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_err(%struct.ena_adapter*, i32, %struct.net_device*, i8*, ...) #1

declare dso_local i32 @ena_com_indirect_table_set(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_com_fill_hash_function(%struct.ena_com_dev*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
