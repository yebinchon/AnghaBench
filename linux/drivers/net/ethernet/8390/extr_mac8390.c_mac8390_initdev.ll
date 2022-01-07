; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_mac8390.c_mac8390_initdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_mac8390.c_mac8390_initdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.net_device = type { i32, i32, i32, i32, i32* }
%struct.nubus_board = type { i32, i32 }

@mac8390_initdev.fwrd4_offsets = internal global [16 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60], align 16
@mac8390_initdev.back4_offsets = internal global [16 x i32] [i32 60, i32 56, i32 52, i32 48, i32 44, i32 40, i32 36, i32 32, i32 28, i32 24, i32 20, i32 16, i32 12, i32 8, i32 4, i32 0], align 16
@mac8390_initdev.fwrd2_offsets = internal global [16 x i32] [i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30], align 16
@mac8390_netdev_ops = common dso_local global i32 0, align 4
@cardname = common dso_local global i32* null, align 8
@ei_status = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@word16 = common dso_local global i32* null, align 8
@CABLETRON_TX_START_PG = common dso_local global i8* null, align 8
@CABLETRON_RX_START_PG = common dso_local global i8* null, align 8
@CABLETRON_RX_STOP_PG = common dso_local global i32 0, align 4
@WD_START_PG = common dso_local global i8* null, align 8
@TX_PAGES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Don't know how to access card memory\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@mac8390_no_reset = common dso_local global i8* null, align 8
@slow_sane_block_input = common dso_local global i8* null, align 8
@slow_sane_block_output = common dso_local global i8* null, align 8
@slow_sane_get_8390_hdr = common dso_local global i8* null, align 8
@sane_block_input = common dso_local global i8* null, align 8
@sane_block_output = common dso_local global i8* null, align 8
@sane_get_8390_hdr = common dso_local global i8* null, align 8
@dayna_block_input = common dso_local global i8* null, align 8
@dayna_block_output = common dso_local global i8* null, align 8
@dayna_get_8390_hdr = common dso_local global i8* null, align 8
@interlan_reset = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Unsupported card type\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"%s (type %s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"MAC %pM, IRQ %d, %d KB shared memory at %#lx, %d-bit access.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nubus_board*, i32)* @mac8390_initdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac8390_initdev(%struct.net_device* %0, %struct.nubus_board* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.nubus_board*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.nubus_board* %1, %struct.nubus_board** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 4
  store i32* @mac8390_netdev_ops, i32** %10, align 8
  %11 = load i32*, i32** @cardname, align 8
  %12 = load i32, i32* %7, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 11), align 4
  %16 = load i32*, i32** @word16, align 8
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 10), align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 132
  br i1 %22, label %23, label %36

23:                                               ; preds = %3
  %24 = load i8*, i8** @CABLETRON_TX_START_PG, align 8
  store i8* %24, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 9), align 8
  %25 = load i8*, i8** @CABLETRON_RX_START_PG, align 8
  store i8* %25, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 8), align 8
  %26 = load i32, i32* @CABLETRON_RX_STOP_PG, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 0), align 8
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 1), align 4
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @CABLETRON_RX_STOP_PG, align 4
  %34 = mul nsw i32 %33, 256
  %35 = add nsw i32 %32, %34
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 2), align 8
  br label %59

36:                                               ; preds = %3
  %37 = load i8*, i8** @WD_START_PG, align 8
  store i8* %37, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 9), align 8
  %38 = load i8*, i8** @WD_START_PG, align 8
  %39 = load i32, i32* @TX_PAGES, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr i8, i8* %38, i64 %40
  store i8* %41, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 8), align 8
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.net_device*, %struct.net_device** %5, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %44, %47
  %49 = sdiv i32 %48, 256
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 0), align 8
  %50 = load %struct.net_device*, %struct.net_device** %5, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @TX_PAGES, align 4
  %54 = mul nsw i32 %53, 256
  %55 = add nsw i32 %52, %54
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 1), align 4
  %56 = load %struct.net_device*, %struct.net_device** %5, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 2), align 8
  br label %59

59:                                               ; preds = %36, %23
  %60 = load i32, i32* %7, align 4
  switch i32 %60, label %103 [
    i32 130, label %61
    i32 134, label %61
    i32 133, label %83
    i32 132, label %88
    i32 131, label %93
    i32 128, label %93
    i32 129, label %98
  ]

61:                                               ; preds = %59, %59
  %62 = load %struct.net_device*, %struct.net_device** %5, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @mac8390_testio(i32 %64)
  switch i32 %65, label %82 [
    i32 135, label %66
    i32 137, label %72
    i32 136, label %77
  ]

66:                                               ; preds = %61
  %67 = load %struct.nubus_board*, %struct.nubus_board** %6, align 8
  %68 = getelementptr inbounds %struct.nubus_board, %struct.nubus_board* %67, i32 0, i32 0
  %69 = call i32 @dev_err(i32* %68, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* @ENODEV, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %147

72:                                               ; preds = %61
  %73 = load i8*, i8** @mac8390_no_reset, align 8
  store i8* %73, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 7), align 8
  %74 = load i8*, i8** @slow_sane_block_input, align 8
  store i8* %74, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 6), align 8
  %75 = load i8*, i8** @slow_sane_block_output, align 8
  store i8* %75, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 5), align 8
  %76 = load i8*, i8** @slow_sane_get_8390_hdr, align 8
  store i8* %76, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 4), align 8
  store i32* getelementptr inbounds ([16 x i32], [16 x i32]* @mac8390_initdev.back4_offsets, i64 0, i64 0), i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 3), align 8
  br label %82

77:                                               ; preds = %61
  %78 = load i8*, i8** @mac8390_no_reset, align 8
  store i8* %78, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 7), align 8
  %79 = load i8*, i8** @sane_block_input, align 8
  store i8* %79, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 6), align 8
  %80 = load i8*, i8** @sane_block_output, align 8
  store i8* %80, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 5), align 8
  %81 = load i8*, i8** @sane_get_8390_hdr, align 8
  store i8* %81, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 4), align 8
  store i32* getelementptr inbounds ([16 x i32], [16 x i32]* @mac8390_initdev.back4_offsets, i64 0, i64 0), i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 3), align 8
  store i32 1, i32* %8, align 4
  br label %82

82:                                               ; preds = %61, %77, %72
  br label %109

83:                                               ; preds = %59
  %84 = load i8*, i8** @mac8390_no_reset, align 8
  store i8* %84, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 7), align 8
  %85 = load i8*, i8** @slow_sane_block_input, align 8
  store i8* %85, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 6), align 8
  %86 = load i8*, i8** @slow_sane_block_output, align 8
  store i8* %86, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 5), align 8
  %87 = load i8*, i8** @slow_sane_get_8390_hdr, align 8
  store i8* %87, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 4), align 8
  store i32* getelementptr inbounds ([16 x i32], [16 x i32]* @mac8390_initdev.back4_offsets, i64 0, i64 0), i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 3), align 8
  br label %109

88:                                               ; preds = %59
  %89 = load i8*, i8** @mac8390_no_reset, align 8
  store i8* %89, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 7), align 8
  %90 = load i8*, i8** @slow_sane_block_input, align 8
  store i8* %90, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 6), align 8
  %91 = load i8*, i8** @slow_sane_block_output, align 8
  store i8* %91, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 5), align 8
  %92 = load i8*, i8** @slow_sane_get_8390_hdr, align 8
  store i8* %92, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 4), align 8
  store i32* getelementptr inbounds ([16 x i32], [16 x i32]* @mac8390_initdev.fwrd2_offsets, i64 0, i64 0), i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 3), align 8
  br label %109

93:                                               ; preds = %59, %59
  %94 = load i8*, i8** @mac8390_no_reset, align 8
  store i8* %94, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 7), align 8
  %95 = load i8*, i8** @dayna_block_input, align 8
  store i8* %95, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 6), align 8
  %96 = load i8*, i8** @dayna_block_output, align 8
  store i8* %96, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 5), align 8
  %97 = load i8*, i8** @dayna_get_8390_hdr, align 8
  store i8* %97, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 4), align 8
  store i32* getelementptr inbounds ([16 x i32], [16 x i32]* @mac8390_initdev.fwrd4_offsets, i64 0, i64 0), i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 3), align 8
  br label %109

98:                                               ; preds = %59
  %99 = load i8*, i8** @interlan_reset, align 8
  store i8* %99, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 7), align 8
  %100 = load i8*, i8** @slow_sane_block_input, align 8
  store i8* %100, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 6), align 8
  %101 = load i8*, i8** @slow_sane_block_output, align 8
  store i8* %101, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 5), align 8
  %102 = load i8*, i8** @slow_sane_get_8390_hdr, align 8
  store i8* %102, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 4), align 8
  store i32* getelementptr inbounds ([16 x i32], [16 x i32]* @mac8390_initdev.fwrd4_offsets, i64 0, i64 0), i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 3), align 8
  br label %109

103:                                              ; preds = %59
  %104 = load %struct.nubus_board*, %struct.nubus_board** %6, align 8
  %105 = getelementptr inbounds %struct.nubus_board, %struct.nubus_board* %104, i32 0, i32 0
  %106 = call i32 @dev_err(i32* %105, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %107 = load i32, i32* @ENODEV, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %4, align 4
  br label %147

109:                                              ; preds = %98, %93, %88, %83, %82
  %110 = load %struct.net_device*, %struct.net_device** %5, align 8
  %111 = call i32 @__NS8390_init(%struct.net_device* %110, i32 0)
  %112 = load %struct.nubus_board*, %struct.nubus_board** %6, align 8
  %113 = getelementptr inbounds %struct.nubus_board, %struct.nubus_board* %112, i32 0, i32 0
  %114 = load %struct.nubus_board*, %struct.nubus_board** %6, align 8
  %115 = getelementptr inbounds %struct.nubus_board, %struct.nubus_board* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** @cardname, align 8
  %118 = load i32, i32* %7, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i32*, i8*, i32, i32, ...) @dev_info(i32* %113, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %116, i32 %121)
  %123 = load %struct.nubus_board*, %struct.nubus_board** %6, align 8
  %124 = getelementptr inbounds %struct.nubus_board, %struct.nubus_board* %123, i32 0, i32 0
  %125 = load %struct.net_device*, %struct.net_device** %5, align 8
  %126 = getelementptr inbounds %struct.net_device, %struct.net_device* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.net_device*, %struct.net_device** %5, align 8
  %129 = getelementptr inbounds %struct.net_device, %struct.net_device* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.net_device*, %struct.net_device** %5, align 8
  %132 = getelementptr inbounds %struct.net_device, %struct.net_device* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.net_device*, %struct.net_device** %5, align 8
  %135 = getelementptr inbounds %struct.net_device, %struct.net_device* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sub nsw i32 %133, %136
  %138 = lshr i32 %137, 10
  %139 = load %struct.net_device*, %struct.net_device** %5, align 8
  %140 = getelementptr inbounds %struct.net_device, %struct.net_device* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i32 32, i32 16
  %146 = call i32 (i32*, i8*, i32, i32, ...) @dev_info(i32* %124, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i32 %127, i32 %130, i32 %138, i32 %141, i32 %145)
  store i32 0, i32* %4, align 4
  br label %147

147:                                              ; preds = %109, %103, %66
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @mac8390_testio(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @__NS8390_init(%struct.net_device*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
