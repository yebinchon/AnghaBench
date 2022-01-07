; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_rss_init_default.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_rss_init_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, %struct.TYPE_2__*, %struct.ena_com_dev* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.ena_com_dev = type { i32 }

@ENA_RX_RSS_TABLE_LOG_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Cannot init indirect table\0A\00", align 1
@ENA_RX_RSS_TABLE_SIZE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Cannot fill indirect table\0A\00", align 1
@ENA_ADMIN_CRC32 = common dso_local global i32 0, align 4
@ENA_HASH_KEY_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Cannot fill hash function\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Cannot fill hash control\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_adapter*)* @ena_rss_init_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_rss_init_default(%struct.ena_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ena_adapter*, align 8
  %4 = alloca %struct.ena_com_dev*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %3, align 8
  %9 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %9, i32 0, i32 2
  %11 = load %struct.ena_com_dev*, %struct.ena_com_dev** %10, align 8
  store %struct.ena_com_dev* %11, %struct.ena_com_dev** %4, align 8
  %12 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %5, align 8
  %16 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %17 = load i32, i32* @ENA_RX_RSS_TABLE_LOG_SIZE, align 4
  %18 = call i32 @ena_com_rss_init(%struct.ena_com_dev* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = call i32 @dev_err(%struct.device* %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %102

25:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %57, %25
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @ENA_RX_RSS_TABLE_SIZE, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %60

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @ethtool_rxfh_indir_default(i32 %31, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @ENA_IO_RXQ_IDX(i32 %38)
  %40 = call i32 @ena_com_indirect_table_fill_entry(%struct.ena_com_dev* %36, i32 %37, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %30
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @EOPNOTSUPP, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp ne i32 %44, %46
  br label %48

48:                                               ; preds = %43, %30
  %49 = phi i1 [ false, %30 ], [ %47, %43 ]
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.device*, %struct.device** %5, align 8
  %55 = call i32 @dev_err(%struct.device* %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %99

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %26

60:                                               ; preds = %26
  %61 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %62 = load i32, i32* @ENA_ADMIN_CRC32, align 4
  %63 = load i32, i32* @ENA_HASH_KEY_SIZE, align 4
  %64 = call i32 @ena_com_fill_hash_function(%struct.ena_com_dev* %61, i32 %62, i32* null, i32 %63, i32 -1)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @EOPNOTSUPP, align 4
  %70 = sub nsw i32 0, %69
  %71 = icmp ne i32 %68, %70
  br label %72

72:                                               ; preds = %67, %60
  %73 = phi i1 [ false, %60 ], [ %71, %67 ]
  %74 = zext i1 %73 to i32
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.device*, %struct.device** %5, align 8
  %79 = call i32 @dev_err(%struct.device* %78, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %99

80:                                               ; preds = %72
  %81 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %82 = call i32 @ena_com_set_default_hash_ctrl(%struct.ena_com_dev* %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @EOPNOTSUPP, align 4
  %88 = sub nsw i32 0, %87
  %89 = icmp ne i32 %86, %88
  br label %90

90:                                               ; preds = %85, %80
  %91 = phi i1 [ false, %80 ], [ %89, %85 ]
  %92 = zext i1 %91 to i32
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load %struct.device*, %struct.device** %5, align 8
  %97 = call i32 @dev_err(%struct.device* %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %99

98:                                               ; preds = %90
  store i32 0, i32* %2, align 4
  br label %104

99:                                               ; preds = %95, %77, %53
  %100 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %101 = call i32 @ena_com_rss_destroy(%struct.ena_com_dev* %100)
  br label %102

102:                                              ; preds = %99, %22
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %102, %98
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @ena_com_rss_init(%struct.ena_com_dev*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @ethtool_rxfh_indir_default(i32, i32) #1

declare dso_local i32 @ena_com_indirect_table_fill_entry(%struct.ena_com_dev*, i32, i32) #1

declare dso_local i32 @ENA_IO_RXQ_IDX(i32) #1

declare dso_local i32 @ena_com_fill_hash_function(%struct.ena_com_dev*, i32, i32*, i32, i32) #1

declare dso_local i32 @ena_com_set_default_hash_ctrl(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_com_rss_destroy(%struct.ena_com_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
