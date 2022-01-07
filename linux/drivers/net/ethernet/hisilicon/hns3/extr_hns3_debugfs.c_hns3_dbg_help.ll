; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_debugfs.c_hns3_dbg_help.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_debugfs.c_hns3_dbg_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"available commands\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"queue info <number>\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"queue map\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"bd info <q_num> <bd index>\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"dump fd tcam\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"dump tc\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"dump tm map <q_num>\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"dump tm\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"dump qos pause cfg\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"dump qos pri map\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"dump qos buf cfg\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"dump mng tbl\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"dump reset info\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"dump m7 info\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"dump ncl_config <offset> <length>(in hex)\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"dump mac tnl status\0A\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"dump reg [[bios common] [ssu <port_id>]\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c" [igu egu <port_id>] [rpu <tc_queue_num>]\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c" [rtc] [ppp] [rcb] [tqp <queue_num>]]\0A\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"dump reg dcb <port_id> <pri_id> <pg_id>\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c" <rq_id> <nq_id> <qset_id>\0A\00", align 1
@HNS3_DBG_BUF_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae3_handle*)* @hns3_dbg_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns3_dbg_help(%struct.hnae3_handle* %0) #0 {
  %2 = alloca %struct.hnae3_handle*, align 8
  %3 = alloca [256 x i8], align 16
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %2, align 8
  %4 = load %struct.hnae3_handle*, %struct.hnae3_handle** %2, align 8
  %5 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 (i32*, i8*, ...) @dev_info(i32* %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.hnae3_handle*, %struct.hnae3_handle** %2, align 8
  %10 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 (i32*, i8*, ...) @dev_info(i32* %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %14 = load %struct.hnae3_handle*, %struct.hnae3_handle** %2, align 8
  %15 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 (i32*, i8*, ...) @dev_info(i32* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %19 = load %struct.hnae3_handle*, %struct.hnae3_handle** %2, align 8
  %20 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 (i32*, i8*, ...) @dev_info(i32* %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %24 = load %struct.hnae3_handle*, %struct.hnae3_handle** %2, align 8
  %25 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = call i32 @hns3_is_phys_func(%struct.TYPE_2__* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %1
  br label %141

30:                                               ; preds = %1
  %31 = load %struct.hnae3_handle*, %struct.hnae3_handle** %2, align 8
  %32 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 (i32*, i8*, ...) @dev_info(i32* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %36 = load %struct.hnae3_handle*, %struct.hnae3_handle** %2, align 8
  %37 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 (i32*, i8*, ...) @dev_info(i32* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %41 = load %struct.hnae3_handle*, %struct.hnae3_handle** %2, align 8
  %42 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 (i32*, i8*, ...) @dev_info(i32* %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %46 = load %struct.hnae3_handle*, %struct.hnae3_handle** %2, align 8
  %47 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 (i32*, i8*, ...) @dev_info(i32* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %51 = load %struct.hnae3_handle*, %struct.hnae3_handle** %2, align 8
  %52 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i32 (i32*, i8*, ...) @dev_info(i32* %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %56 = load %struct.hnae3_handle*, %struct.hnae3_handle** %2, align 8
  %57 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = call i32 (i32*, i8*, ...) @dev_info(i32* %59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %61 = load %struct.hnae3_handle*, %struct.hnae3_handle** %2, align 8
  %62 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = call i32 (i32*, i8*, ...) @dev_info(i32* %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  %66 = load %struct.hnae3_handle*, %struct.hnae3_handle** %2, align 8
  %67 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 (i32*, i8*, ...) @dev_info(i32* %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %71 = load %struct.hnae3_handle*, %struct.hnae3_handle** %2, align 8
  %72 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = call i32 (i32*, i8*, ...) @dev_info(i32* %74, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  %76 = load %struct.hnae3_handle*, %struct.hnae3_handle** %2, align 8
  %77 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = call i32 (i32*, i8*, ...) @dev_info(i32* %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %81 = load %struct.hnae3_handle*, %struct.hnae3_handle** %2, align 8
  %82 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = call i32 (i32*, i8*, ...) @dev_info(i32* %84, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0))
  %86 = load %struct.hnae3_handle*, %struct.hnae3_handle** %2, align 8
  %87 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = call i32 (i32*, i8*, ...) @dev_info(i32* %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  %91 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %92 = call i32 @memset(i8* %91, i32 0, i32 256)
  %93 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %94 = call i32 @strncat(i8* %93, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0), i32 255)
  %95 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %96 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %97 = call i32 @strlen(i8* %96)
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %95, i64 %98
  %100 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %101 = call i32 @strlen(i8* %100)
  %102 = sub nsw i32 256, %101
  %103 = sub nsw i32 %102, 1
  %104 = call i32 @strncat(i8* %99, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0), i32 %103)
  %105 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %106 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %107 = call i32 @strlen(i8* %106)
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %105, i64 %108
  %110 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %111 = call i32 @strlen(i8* %110)
  %112 = sub nsw i32 256, %111
  %113 = sub nsw i32 %112, 1
  %114 = call i32 @strncat(i8* %109, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i64 0, i64 0), i32 %113)
  %115 = load %struct.hnae3_handle*, %struct.hnae3_handle** %2, align 8
  %116 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %115, i32 0, i32 0
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %120 = call i32 (i32*, i8*, ...) @dev_info(i32* %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %119)
  %121 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %122 = call i32 @memset(i8* %121, i32 0, i32 256)
  %123 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %124 = call i32 @strncat(i8* %123, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i64 0, i64 0), i32 255)
  %125 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %126 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %127 = call i32 @strlen(i8* %126)
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %125, i64 %128
  %130 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %131 = call i32 @strlen(i8* %130)
  %132 = sub nsw i32 256, %131
  %133 = sub nsw i32 %132, 1
  %134 = call i32 @strncat(i8* %129, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0), i32 %133)
  %135 = load %struct.hnae3_handle*, %struct.hnae3_handle** %2, align 8
  %136 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %135, i32 0, i32 0
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %140 = call i32 (i32*, i8*, ...) @dev_info(i32* %138, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %139)
  br label %141

141:                                              ; preds = %30, %29
  ret void
}

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @hns3_is_phys_func(%struct.TYPE_2__*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @strncat(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
