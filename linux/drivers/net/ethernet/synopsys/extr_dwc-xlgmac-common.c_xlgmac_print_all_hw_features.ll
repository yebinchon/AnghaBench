; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-common.c_xlgmac_print_all_hw_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-common.c_xlgmac_print_all_hw_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"=====================================================\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"HW support following features\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"VLAN Hash Filter Selected                   : %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"SMA (MDIO) Interface                        : %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"PMT Remote Wake-up Packet Enable            : %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"PMT Magic Packet Enable                     : %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"RMON/MMC Module Enable                      : %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"ARP Offload Enabled                         : %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"IEEE 1588-2008 Timestamp Enabled            : %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"Energy Efficient Ethernet Enabled           : %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"Transmit Checksum Offload Enabled           : %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"Receive Checksum Offload Enabled            : %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"Additional MAC Addresses 1-31 Selected      : %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"RESERVED\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"INTERNAL\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"EXTERNAL\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"BOTH\00", align 1
@.str.20 = private unnamed_addr constant [50 x i8] c"Timestamp System Time Source                : %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"Source Address or VLAN Insertion Enable     : %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"128 bytes\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"256 bytes\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"512 bytes\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"1 KBytes\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"2 KBytes\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"4 KBytes\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"8 KBytes\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"16 KBytes\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"32 kBytes\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"64 KBytes\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"128 KBytes\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"256 KBytes\00", align 1
@.str.34 = private unnamed_addr constant [50 x i8] c"MTL Receive FIFO Size                       : %s\0A\00", align 1
@.str.35 = private unnamed_addr constant [50 x i8] c"MTL Transmit FIFO Size                      : %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [50 x i8] c"IEEE 1588 High Word Register Enable         : %s\0A\00", align 1
@.str.37 = private unnamed_addr constant [50 x i8] c"Address width                               : %u\0A\00", align 1
@.str.38 = private unnamed_addr constant [50 x i8] c"DCB Feature Enable                          : %s\0A\00", align 1
@.str.39 = private unnamed_addr constant [50 x i8] c"Split Header Feature Enable                 : %s\0A\00", align 1
@.str.40 = private unnamed_addr constant [50 x i8] c"TCP Segmentation Offload Enable             : %s\0A\00", align 1
@.str.41 = private unnamed_addr constant [50 x i8] c"DMA Debug Registers Enabled                 : %s\0A\00", align 1
@.str.42 = private unnamed_addr constant [50 x i8] c"RSS Feature Enabled                         : %s\0A\00", align 1
@.str.43 = private unnamed_addr constant [50 x i8] c"Number of Traffic classes                   : %u\0A\00", align 1
@.str.44 = private unnamed_addr constant [50 x i8] c"Hash Table Size                             : %u\0A\00", align 1
@.str.45 = private unnamed_addr constant [50 x i8] c"Total number of L3 or L4 Filters            : %u\0A\00", align 1
@.str.46 = private unnamed_addr constant [50 x i8] c"Number of MTL Receive Queues                : %u\0A\00", align 1
@.str.47 = private unnamed_addr constant [50 x i8] c"Number of MTL Transmit Queues               : %u\0A\00", align 1
@.str.48 = private unnamed_addr constant [50 x i8] c"Number of DMA Receive Channels              : %u\0A\00", align 1
@.str.49 = private unnamed_addr constant [50 x i8] c"Number of DMA Transmit Channels             : %u\0A\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"No PPS output\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"1 PPS output\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"2 PPS output\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"3 PPS output\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"4 PPS output\00", align 1
@.str.55 = private unnamed_addr constant [50 x i8] c"Number of PPS Outputs                       : %s\0A\00", align 1
@.str.56 = private unnamed_addr constant [19 x i8] c"No auxiliary input\00", align 1
@.str.57 = private unnamed_addr constant [18 x i8] c"1 auxiliary input\00", align 1
@.str.58 = private unnamed_addr constant [18 x i8] c"2 auxiliary input\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c"3 auxiliary input\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"4 auxiliary input\00", align 1
@.str.61 = private unnamed_addr constant [49 x i8] c"Number of Auxiliary Snapshot Inputs         : %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xlgmac_print_all_hw_features(%struct.xlgmac_pdata* %0) #0 {
  %2 = alloca %struct.xlgmac_pdata*, align 8
  %3 = alloca i8*, align 8
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %2, align 8
  store i8* null, i8** %3, align 8
  %4 = call i32 (i8*, ...) @XLGMAC_PR(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @XLGMAC_PR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @XLGMAC_PR(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @XLGMAC_PR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @XLGMAC_PR(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %10 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 30
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %16 = call i32 (i8*, ...) @XLGMAC_PR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i8* %15)
  %17 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %18 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 29
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %24 = call i32 (i8*, ...) @XLGMAC_PR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i8* %23)
  %25 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %26 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 28
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %32 = call i32 (i8*, ...) @XLGMAC_PR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i8* %31)
  %33 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %34 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 27
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %40 = call i32 (i8*, ...) @XLGMAC_PR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i8* %39)
  %41 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %42 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 26
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %48 = call i32 (i8*, ...) @XLGMAC_PR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0), i8* %47)
  %49 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %50 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 25
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %56 = call i32 (i8*, ...) @XLGMAC_PR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0), i8* %55)
  %57 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %58 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 24
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %64 = call i32 (i8*, ...) @XLGMAC_PR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0), i8* %63)
  %65 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %66 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 23
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %72 = call i32 (i8*, ...) @XLGMAC_PR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0), i8* %71)
  %73 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %74 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 22
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %80 = call i32 (i8*, ...) @XLGMAC_PR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0), i8* %79)
  %81 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %82 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 21
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %88 = call i32 (i8*, ...) @XLGMAC_PR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.14, i64 0, i64 0), i8* %87)
  %89 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %90 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 20
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %96 = call i32 (i8*, ...) @XLGMAC_PR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i64 0, i64 0), i8* %95)
  %97 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %98 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  switch i32 %100, label %105 [
    i32 0, label %101
    i32 1, label %102
    i32 2, label %103
    i32 3, label %104
  ]

101:                                              ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  br label %105

102:                                              ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8** %3, align 8
  br label %105

103:                                              ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i8** %3, align 8
  br label %105

104:                                              ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8** %3, align 8
  br label %105

105:                                              ; preds = %1, %104, %103, %102, %101
  %106 = load i8*, i8** %3, align 8
  %107 = call i32 (i8*, ...) @XLGMAC_PR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.20, i64 0, i64 0), i8* %106)
  %108 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %109 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 19
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %115 = call i32 (i8*, ...) @XLGMAC_PR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.21, i64 0, i64 0), i8* %114)
  %116 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %117 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  switch i32 %119, label %132 [
    i32 0, label %120
    i32 1, label %121
    i32 2, label %122
    i32 3, label %123
    i32 4, label %124
    i32 5, label %125
    i32 6, label %126
    i32 7, label %127
    i32 8, label %128
    i32 9, label %129
    i32 10, label %130
    i32 11, label %131
  ]

120:                                              ; preds = %105
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), i8** %3, align 8
  br label %133

121:                                              ; preds = %105
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8** %3, align 8
  br label %133

122:                                              ; preds = %105
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i8** %3, align 8
  br label %133

123:                                              ; preds = %105
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i8** %3, align 8
  br label %133

124:                                              ; preds = %105
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i8** %3, align 8
  br label %133

125:                                              ; preds = %105
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i8** %3, align 8
  br label %133

126:                                              ; preds = %105
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0), i8** %3, align 8
  br label %133

127:                                              ; preds = %105
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0), i8** %3, align 8
  br label %133

128:                                              ; preds = %105
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i8** %3, align 8
  br label %133

129:                                              ; preds = %105
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0), i8** %3, align 8
  br label %133

130:                                              ; preds = %105
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0), i8** %3, align 8
  br label %133

131:                                              ; preds = %105
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0), i8** %3, align 8
  br label %133

132:                                              ; preds = %105
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  br label %133

133:                                              ; preds = %132, %131, %130, %129, %128, %127, %126, %125, %124, %123, %122, %121, %120
  %134 = load i8*, i8** %3, align 8
  %135 = call i32 (i8*, ...) @XLGMAC_PR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.34, i64 0, i64 0), i8* %134)
  %136 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %137 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  switch i32 %139, label %152 [
    i32 0, label %140
    i32 1, label %141
    i32 2, label %142
    i32 3, label %143
    i32 4, label %144
    i32 5, label %145
    i32 6, label %146
    i32 7, label %147
    i32 8, label %148
    i32 9, label %149
    i32 10, label %150
    i32 11, label %151
  ]

140:                                              ; preds = %133
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), i8** %3, align 8
  br label %153

141:                                              ; preds = %133
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8** %3, align 8
  br label %153

142:                                              ; preds = %133
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i8** %3, align 8
  br label %153

143:                                              ; preds = %133
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i8** %3, align 8
  br label %153

144:                                              ; preds = %133
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i8** %3, align 8
  br label %153

145:                                              ; preds = %133
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i8** %3, align 8
  br label %153

146:                                              ; preds = %133
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0), i8** %3, align 8
  br label %153

147:                                              ; preds = %133
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0), i8** %3, align 8
  br label %153

148:                                              ; preds = %133
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i8** %3, align 8
  br label %153

149:                                              ; preds = %133
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0), i8** %3, align 8
  br label %153

150:                                              ; preds = %133
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0), i8** %3, align 8
  br label %153

151:                                              ; preds = %133
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0), i8** %3, align 8
  br label %153

152:                                              ; preds = %133
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  br label %153

153:                                              ; preds = %152, %151, %150, %149, %148, %147, %146, %145, %144, %143, %142, %141, %140
  %154 = load i8*, i8** %3, align 8
  %155 = call i32 (i8*, ...) @XLGMAC_PR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.35, i64 0, i64 0), i8* %154)
  %156 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %157 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 18
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %163 = call i32 (i8*, ...) @XLGMAC_PR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.36, i64 0, i64 0), i8* %162)
  %164 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %165 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 17
  %167 = load i32, i32* %166, align 8
  %168 = call i32 (i8*, ...) @XLGMAC_PR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.37, i64 0, i64 0), i32 %167)
  %169 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %170 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 16
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  %174 = zext i1 %173 to i64
  %175 = select i1 %173, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %176 = call i32 (i8*, ...) @XLGMAC_PR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.38, i64 0, i64 0), i8* %175)
  %177 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %178 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 15
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  %182 = zext i1 %181 to i64
  %183 = select i1 %181, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %184 = call i32 (i8*, ...) @XLGMAC_PR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.39, i64 0, i64 0), i8* %183)
  %185 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %186 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 14
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  %190 = zext i1 %189 to i64
  %191 = select i1 %189, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %192 = call i32 (i8*, ...) @XLGMAC_PR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.40, i64 0, i64 0), i8* %191)
  %193 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %194 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 13
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  %198 = zext i1 %197 to i64
  %199 = select i1 %197, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %200 = call i32 (i8*, ...) @XLGMAC_PR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.41, i64 0, i64 0), i8* %199)
  %201 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %202 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 12
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  %206 = zext i1 %205 to i64
  %207 = select i1 %205, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %208 = call i32 (i8*, ...) @XLGMAC_PR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.42, i64 0, i64 0), i8* %207)
  %209 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %210 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 11
  %212 = load i32, i32* %211, align 4
  %213 = call i32 (i8*, ...) @XLGMAC_PR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.43, i64 0, i64 0), i32 %212)
  %214 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %215 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 10
  %217 = load i32, i32* %216, align 8
  %218 = call i32 (i8*, ...) @XLGMAC_PR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.44, i64 0, i64 0), i32 %217)
  %219 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %220 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 9
  %222 = load i32, i32* %221, align 4
  %223 = call i32 (i8*, ...) @XLGMAC_PR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.45, i64 0, i64 0), i32 %222)
  %224 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %225 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 8
  %227 = load i32, i32* %226, align 8
  %228 = call i32 (i8*, ...) @XLGMAC_PR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.46, i64 0, i64 0), i32 %227)
  %229 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %230 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 7
  %232 = load i32, i32* %231, align 4
  %233 = call i32 (i8*, ...) @XLGMAC_PR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.47, i64 0, i64 0), i32 %232)
  %234 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %235 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 6
  %237 = load i32, i32* %236, align 8
  %238 = call i32 (i8*, ...) @XLGMAC_PR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.48, i64 0, i64 0), i32 %237)
  %239 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %240 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 5
  %242 = load i32, i32* %241, align 4
  %243 = call i32 (i8*, ...) @XLGMAC_PR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.49, i64 0, i64 0), i32 %242)
  %244 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %245 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  switch i32 %247, label %253 [
    i32 0, label %248
    i32 1, label %249
    i32 2, label %250
    i32 3, label %251
    i32 4, label %252
  ]

248:                                              ; preds = %153
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i64 0, i64 0), i8** %3, align 8
  br label %254

249:                                              ; preds = %153
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.51, i64 0, i64 0), i8** %3, align 8
  br label %254

250:                                              ; preds = %153
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i64 0, i64 0), i8** %3, align 8
  br label %254

251:                                              ; preds = %153
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i64 0, i64 0), i8** %3, align 8
  br label %254

252:                                              ; preds = %153
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i64 0, i64 0), i8** %3, align 8
  br label %254

253:                                              ; preds = %153
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  br label %254

254:                                              ; preds = %253, %252, %251, %250, %249, %248
  %255 = load i8*, i8** %3, align 8
  %256 = call i32 (i8*, ...) @XLGMAC_PR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.55, i64 0, i64 0), i8* %255)
  %257 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %258 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 4
  %260 = load i32, i32* %259, align 8
  switch i32 %260, label %266 [
    i32 0, label %261
    i32 1, label %262
    i32 2, label %263
    i32 3, label %264
    i32 4, label %265
  ]

261:                                              ; preds = %254
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.56, i64 0, i64 0), i8** %3, align 8
  br label %267

262:                                              ; preds = %254
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.57, i64 0, i64 0), i8** %3, align 8
  br label %267

263:                                              ; preds = %254
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.58, i64 0, i64 0), i8** %3, align 8
  br label %267

264:                                              ; preds = %254
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.59, i64 0, i64 0), i8** %3, align 8
  br label %267

265:                                              ; preds = %254
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.60, i64 0, i64 0), i8** %3, align 8
  br label %267

266:                                              ; preds = %254
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  br label %267

267:                                              ; preds = %266, %265, %264, %263, %262, %261
  %268 = load i8*, i8** %3, align 8
  %269 = call i32 (i8*, ...) @XLGMAC_PR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.61, i64 0, i64 0), i8* %268)
  %270 = call i32 (i8*, ...) @XLGMAC_PR(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %271 = call i32 (i8*, ...) @XLGMAC_PR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %272 = call i32 (i8*, ...) @XLGMAC_PR(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @XLGMAC_PR(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
