; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sunxi-mmc.c_sunxi_mmc_dump_errinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sunxi-mmc.c_sunxi_mmc_dump_errinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_mmc_host = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.mmc_data*, %struct.mmc_command* }
%struct.mmc_data = type { i32 }
%struct.mmc_command = type { i64 }

@SDXC_INTERRUPT_ERROR_BIT = common dso_local global i32 0, align 4
@SDXC_RESP_TIMEOUT = common dso_local global i32 0, align 4
@SD_IO_SEND_OP_COND = common dso_local global i64 0, align 8
@SD_IO_RW_DIRECT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"smc %d err, cmd %d,%s%s%s%s%s%s%s%s%s%s !!\0A\00", align 1
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c" WR\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" RD\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SDXC_RESP_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c" RE\00", align 1
@SDXC_RESP_CRC_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c" RCE\00", align 1
@SDXC_DATA_CRC_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c" DCE\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c" RTO\00", align 1
@SDXC_DATA_TIMEOUT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c" DTO\00", align 1
@SDXC_FIFO_RUN_ERROR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c" FE\00", align 1
@SDXC_HARD_WARE_LOCKED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c" HL\00", align 1
@SDXC_START_BIT_ERROR = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c" SBE\00", align 1
@SDXC_END_BIT_ERROR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c" EBE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sunxi_mmc_host*)* @sunxi_mmc_dump_errinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunxi_mmc_dump_errinfo(%struct.sunxi_mmc_host* %0) #0 {
  %2 = alloca %struct.sunxi_mmc_host*, align 8
  %3 = alloca %struct.mmc_command*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  store %struct.sunxi_mmc_host* %0, %struct.sunxi_mmc_host** %2, align 8
  %5 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %2, align 8
  %6 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %5, i32 0, i32 2
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load %struct.mmc_command*, %struct.mmc_command** %8, align 8
  store %struct.mmc_command* %9, %struct.mmc_command** %3, align 8
  %10 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %2, align 8
  %11 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.mmc_data*, %struct.mmc_data** %13, align 8
  store %struct.mmc_data* %14, %struct.mmc_data** %4, align 8
  %15 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %2, align 8
  %16 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SDXC_INTERRUPT_ERROR_BIT, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @SDXC_RESP_TIMEOUT, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %1
  %23 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %24 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SD_IO_SEND_OP_COND, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %30 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SD_IO_RW_DIRECT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %22
  br label %135

35:                                               ; preds = %28, %1
  %36 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %2, align 8
  %37 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = call i32 @mmc_dev(%struct.TYPE_4__* %38)
  %40 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %2, align 8
  %41 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %46 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %49 = icmp ne %struct.mmc_data* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %35
  %51 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %52 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @MMC_DATA_WRITE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  br label %60

59:                                               ; preds = %35
  br label %60

60:                                               ; preds = %59, %50
  %61 = phi i8* [ %58, %50 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %59 ]
  %62 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %2, align 8
  %63 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @SDXC_RESP_ERROR, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %70 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %2, align 8
  %71 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @SDXC_RESP_CRC_ERROR, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %78 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %2, align 8
  %79 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @SDXC_DATA_CRC_ERROR, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %86 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %2, align 8
  %87 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @SDXC_RESP_TIMEOUT, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %94 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %2, align 8
  %95 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @SDXC_DATA_TIMEOUT, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %102 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %2, align 8
  %103 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @SDXC_FIFO_RUN_ERROR, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %110 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %2, align 8
  %111 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @SDXC_HARD_WARE_LOCKED, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %118 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %2, align 8
  %119 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @SDXC_START_BIT_ERROR, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %126 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %2, align 8
  %127 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @SDXC_END_BIT_ERROR, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %134 = call i32 @dev_dbg(i32 %39, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %44, i64 %47, i8* %61, i8* %69, i8* %77, i8* %85, i8* %93, i8* %101, i8* %109, i8* %117, i8* %125, i8* %133)
  br label %135

135:                                              ; preds = %60, %34
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @mmc_dev(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
