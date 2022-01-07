; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_debug.c_brcms_debugfs_macstat_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_debug.c_brcms_debugfs_macstat_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.brcms_pub* }
%struct.brcms_pub = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.macstat* }
%struct.macstat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.brcms_info* }
%struct.brcms_info = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"txallfrm: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"txrtsfrm: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"txctsfrm: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"txackfrm: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"txdnlfrm: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"txbcnfrm: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"txfunfl[8]:\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"\0Atxtplunfl: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"txphyerr: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"pktengrxducast: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"pktengrxdmcast: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"rxfrmtoolong: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"rxfrmtooshrt: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"rxinvmachdr: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"rxbadfcs: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"rxbadplcp: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"rxcrsglitch: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"rxstrt: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"rxdfrmucastmbss: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"rxmfrmucastmbss: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"rxcfrmucast: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"rxrtsucast: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"rxctsucast: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"rxackucast: %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"rxdfrmocast: %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"rxmfrmocast: %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"rxcfrmocast: %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"rxrtsocast: %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"rxctsocast: %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"rxdfrmmcast: %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"rxmfrmmcast: %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"rxcfrmmcast: %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"rxbeaconmbss: %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"rxdfrmucastobss: %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"rxbeaconobss: %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"rxrsptmout: %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"bcntxcancl: %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"rxf0ovfl: %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"rxf1ovfl: %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"rxf2ovfl: %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"txsfovfl: %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"pmqovfl: %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"rxcgprqfrm: %d\0A\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"rxcgprsqovfl: %d\0A\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"txcgprsfail: %d\0A\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"txcgprssuc: %d\0A\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"prs_timeout: %d\0A\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"rxnack: %d\0A\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"frmscons: %d\0A\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"txnack: %d\0A\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"txglitch_nack: %d\0A\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"txburst: %d\0A\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"bphy_rxcrsglitch: %d\0A\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"phywatchdog: %d\0A\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"bphy_badplcp: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @brcms_debugfs_macstat_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcms_debugfs_macstat_read(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.brcms_pub*, align 8
  %6 = alloca %struct.brcms_info*, align 8
  %7 = alloca %struct.macstat, align 8
  %8 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.brcms_pub*, %struct.brcms_pub** %10, align 8
  store %struct.brcms_pub* %11, %struct.brcms_pub** %5, align 8
  %12 = load %struct.brcms_pub*, %struct.brcms_pub** %5, align 8
  %13 = getelementptr inbounds %struct.brcms_pub, %struct.brcms_pub* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.brcms_info*, %struct.brcms_info** %15, align 8
  store %struct.brcms_info* %16, %struct.brcms_info** %6, align 8
  %17 = load %struct.brcms_info*, %struct.brcms_info** %6, align 8
  %18 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %17, i32 0, i32 0
  %19 = call i32 @spin_lock_bh(i32* %18)
  %20 = load %struct.brcms_pub*, %struct.brcms_pub** %5, align 8
  %21 = getelementptr inbounds %struct.brcms_pub, %struct.brcms_pub* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.macstat*, %struct.macstat** %25, align 8
  %27 = bitcast %struct.macstat* %7 to i8*
  %28 = bitcast %struct.macstat* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 224, i1 false)
  %29 = load %struct.brcms_info*, %struct.brcms_info** %6, align 8
  %30 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock_bh(i32* %30)
  %32 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %33 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 54
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %37 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 53
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %41 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 52
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %45 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 51
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  %48 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %49 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 50
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  %52 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %53 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 49
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %54)
  %56 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %57 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %73, %2
  %59 = load i32, i32* %8, align 4
  %60 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 48
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @ARRAY_SIZE(i32* %61)
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %58
  %65 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %66 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 48
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %64
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %58

76:                                               ; preds = %58
  %77 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %78 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 47
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %77, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %79)
  %81 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %82 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 46
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %81, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %83)
  %85 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %86 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 45
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %85, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %87)
  %89 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %90 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 44
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %89, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %91)
  %93 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %94 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 43
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %93, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 %95)
  %97 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %98 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 42
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %97, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i32 %99)
  %101 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %102 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 41
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %101, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 %103)
  %105 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %106 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 40
  %107 = load i32, i32* %106, align 8
  %108 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %105, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32 %107)
  %109 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %110 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 39
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %109, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 %111)
  %113 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %114 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 38
  %115 = load i32, i32* %114, align 8
  %116 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %113, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i32 %115)
  %117 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %118 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 37
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %117, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 %119)
  %121 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %122 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 36
  %123 = load i32, i32* %122, align 8
  %124 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %121, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i32 %123)
  %125 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %126 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 35
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %125, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 %127)
  %129 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %130 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 34
  %131 = load i32, i32* %130, align 8
  %132 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %129, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i32 %131)
  %133 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %134 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 33
  %135 = load i32, i32* %134, align 4
  %136 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %133, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i32 %135)
  %137 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %138 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 32
  %139 = load i32, i32* %138, align 8
  %140 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %137, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i32 %139)
  %141 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %142 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 31
  %143 = load i32, i32* %142, align 4
  %144 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %141, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), i32 %143)
  %145 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %146 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 30
  %147 = load i32, i32* %146, align 8
  %148 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %145, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0), i32 %147)
  %149 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %150 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 29
  %151 = load i32, i32* %150, align 4
  %152 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %149, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0), i32 %151)
  %153 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %154 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 28
  %155 = load i32, i32* %154, align 8
  %156 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %153, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i64 0, i64 0), i32 %155)
  %157 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %158 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 27
  %159 = load i32, i32* %158, align 4
  %160 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %157, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i32 %159)
  %161 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %162 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 26
  %163 = load i32, i32* %162, align 8
  %164 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %161, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0), i32 %163)
  %165 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %166 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 25
  %167 = load i32, i32* %166, align 4
  %168 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %165, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i64 0, i64 0), i32 %167)
  %169 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %170 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 24
  %171 = load i32, i32* %170, align 8
  %172 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %169, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0), i32 %171)
  %173 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %174 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 23
  %175 = load i32, i32* %174, align 4
  %176 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %173, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i64 0, i64 0), i32 %175)
  %177 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %178 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 22
  %179 = load i32, i32* %178, align 8
  %180 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %177, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i64 0, i64 0), i32 %179)
  %181 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %182 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 21
  %183 = load i32, i32* %182, align 4
  %184 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %181, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i64 0, i64 0), i32 %183)
  %185 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %186 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 20
  %187 = load i32, i32* %186, align 8
  %188 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %185, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i64 0, i64 0), i32 %187)
  %189 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %190 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 19
  %191 = load i32, i32* %190, align 4
  %192 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %189, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i64 0, i64 0), i32 %191)
  %193 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %194 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 18
  %195 = load i32, i32* %194, align 8
  %196 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %193, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i64 0, i64 0), i32 %195)
  %197 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %198 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 17
  %199 = load i32, i32* %198, align 4
  %200 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %197, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i64 0, i64 0), i32 %199)
  %201 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %202 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 16
  %203 = load i32, i32* %202, align 8
  %204 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %201, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i64 0, i64 0), i32 %203)
  %205 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %206 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 15
  %207 = load i32, i32* %206, align 4
  %208 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %205, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i64 0, i64 0), i32 %207)
  %209 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %210 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 14
  %211 = load i32, i32* %210, align 8
  %212 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %209, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i64 0, i64 0), i32 %211)
  %213 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %214 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 13
  %215 = load i32, i32* %214, align 4
  %216 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %213, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i64 0, i64 0), i32 %215)
  %217 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %218 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 12
  %219 = load i32, i32* %218, align 8
  %220 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %217, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i64 0, i64 0), i32 %219)
  %221 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %222 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 11
  %223 = load i32, i32* %222, align 4
  %224 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %221, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i64 0, i64 0), i32 %223)
  %225 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %226 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 10
  %227 = load i32, i32* %226, align 8
  %228 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %225, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i64 0, i64 0), i32 %227)
  %229 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %230 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 9
  %231 = load i32, i32* %230, align 4
  %232 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %229, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i64 0, i64 0), i32 %231)
  %233 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %234 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 8
  %235 = load i32, i32* %234, align 8
  %236 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %233, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i64 0, i64 0), i32 %235)
  %237 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %238 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 7
  %239 = load i32, i32* %238, align 4
  %240 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %237, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i64 0, i64 0), i32 %239)
  %241 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %242 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 6
  %243 = load i32, i32* %242, align 8
  %244 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %241, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i64 0, i64 0), i32 %243)
  %245 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %246 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 5
  %247 = load i32, i32* %246, align 4
  %248 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %245, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i64 0, i64 0), i32 %247)
  %249 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %250 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 4
  %251 = load i32, i32* %250, align 8
  %252 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %249, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.51, i64 0, i64 0), i32 %251)
  %253 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %254 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 3
  %255 = load i32, i32* %254, align 4
  %256 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %253, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i64 0, i64 0), i32 %255)
  %257 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %258 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %257, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.53, i64 0, i64 0), i32 %259)
  %261 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %262 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %261, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.54, i64 0, i64 0), i32 %263)
  %265 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %266 = getelementptr inbounds %struct.macstat, %struct.macstat* %7, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %265, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.55, i64 0, i64 0), i32 %267)
  ret i32 0
}

declare dso_local i32 @spin_lock_bh(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
