; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_get_coredump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_get_coredump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.bnxt = type { i32, %struct.bnxt_coredump_segment_hdr }
%struct.bnxt_coredump_segment_hdr = type { i32 }
%struct.coredump_segment_record = type { i32, i32 }
%struct.bnxt_coredump = type { i32, i64, i32* }

@sys_tz = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to get coredump segment list\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to initiate coredump for seg = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Failed to retrieve coredump for seg = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, i8*, i32*)* @bnxt_get_coredump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_get_coredump(%struct.bnxt* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.coredump_segment_record*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bnxt_coredump_segment_hdr, align 4
  %13 = alloca %struct.bnxt_coredump, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 4, i32* %7, align 4
  store %struct.coredump_segment_record* null, %struct.coredump_segment_record** %8, align 8
  store i32 0, i32* %9, align 4
  %24 = bitcast %struct.bnxt_coredump* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %24, i8 0, i64 24, i1 false)
  store i32 0, i32* %16, align 4
  %25 = call i32 (...) @ktime_get_real_seconds()
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys_tz, i32 0, i32 0), align 4
  %27 = mul nsw i32 %26, 60
  store i32 %27, i32* %15, align 4
  store i32 4, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %28, %29
  %31 = load i32*, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %58

34:                                               ; preds = %3
  %35 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @bnxt_fill_coredump_seg_hdr(%struct.bnxt* %35, %struct.bnxt_coredump_segment_hdr* %12, %struct.coredump_segment_record* null, i32 %36, i32 0, i32 0, i32 0)
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr i8, i8* %38, i64 %40
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @memcpy(i8* %41, %struct.bnxt_coredump_segment_hdr* %12, i32 %42)
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %9, align 4
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr i8, i8* %47, i64 %49
  %51 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %52 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %51, i32 0, i32 1
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @memcpy(i8* %50, %struct.bnxt_coredump_segment_hdr* %52, i32 %53)
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %34, %3
  %59 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %60 = call i32 @bnxt_hwrm_dbg_coredump_list(%struct.bnxt* %59, %struct.bnxt_coredump* %13)
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %65 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32, i8*, ...) @netdev_err(i32 %66, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %169

68:                                               ; preds = %58
  %69 = load i32, i32* %10, align 4
  %70 = getelementptr inbounds %struct.bnxt_coredump, %struct.bnxt_coredump* %13, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = mul nsw i32 %69, %71
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, %72
  store i32 %75, i32* %73, align 4
  %76 = getelementptr inbounds %struct.bnxt_coredump, %struct.bnxt_coredump* %13, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to %struct.coredump_segment_record*
  store %struct.coredump_segment_record* %78, %struct.coredump_segment_record** %8, align 8
  store i32 8, i32* %11, align 4
  store i32 0, i32* %17, align 4
  br label %79

79:                                               ; preds = %165, %68
  %80 = load i32, i32* %17, align 4
  %81 = getelementptr inbounds %struct.bnxt_coredump, %struct.bnxt_coredump* %13, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %80, %82
  br i1 %83, label %84, label %168

84:                                               ; preds = %79
  %85 = load %struct.coredump_segment_record*, %struct.coredump_segment_record** %8, align 8
  %86 = getelementptr inbounds %struct.coredump_segment_record, %struct.coredump_segment_record* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @le16_to_cpu(i32 %87)
  store i32 %88, i32* %18, align 4
  %89 = load %struct.coredump_segment_record*, %struct.coredump_segment_record** %8, align 8
  %90 = getelementptr inbounds %struct.coredump_segment_record, %struct.coredump_segment_record* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @le16_to_cpu(i32 %91)
  store i32 %92, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %93 = load i64, i64* @jiffies, align 8
  store i64 %93, i64* %22, align 8
  %94 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %95 = load i32, i32* %18, align 4
  %96 = load i32, i32* %19, align 4
  %97 = call i32 @bnxt_hwrm_dbg_coredump_initiate(%struct.bnxt* %94, i32 %95, i32 %96)
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* %16, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %84
  %101 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %102 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.coredump_segment_record*, %struct.coredump_segment_record** %8, align 8
  %105 = getelementptr inbounds %struct.coredump_segment_record, %struct.coredump_segment_record* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i32, i8*, ...) @netdev_err(i32 %103, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  br label %128

108:                                              ; preds = %84
  %109 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %110 = load i32, i32* %18, align 4
  %111 = load i32, i32* %19, align 4
  %112 = load i8*, i8** %5, align 8
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %113, %114
  %116 = call i32 @bnxt_hwrm_dbg_coredump_retrieve(%struct.bnxt* %109, i32 %110, i32 %111, i32* %21, i8* %112, i32 %115)
  store i32 %116, i32* %16, align 4
  %117 = load i32, i32* %16, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %108
  %120 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %121 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.coredump_segment_record*, %struct.coredump_segment_record** %8, align 8
  %124 = getelementptr inbounds %struct.coredump_segment_record, %struct.coredump_segment_record* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i32, i8*, ...) @netdev_err(i32 %122, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %125)
  br label %127

127:                                              ; preds = %119, %108
  br label %128

128:                                              ; preds = %127, %100
  %129 = load i64, i64* @jiffies, align 8
  store i64 %129, i64* %23, align 8
  %130 = load i64, i64* %23, align 8
  %131 = load i64, i64* %22, align 8
  %132 = sub i64 %130, %131
  %133 = call i32 @jiffies_to_msecs(i64 %132)
  store i32 %133, i32* %20, align 4
  %134 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %135 = load %struct.coredump_segment_record*, %struct.coredump_segment_record** %8, align 8
  %136 = load i32, i32* %21, align 4
  %137 = load i32, i32* %16, align 4
  %138 = load i32, i32* %20, align 4
  %139 = call i32 @bnxt_fill_coredump_seg_hdr(%struct.bnxt* %134, %struct.bnxt_coredump_segment_hdr* %12, %struct.coredump_segment_record* %135, i32 %136, i32 %137, i32 %138, i32 0)
  %140 = load i8*, i8** %5, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %154

142:                                              ; preds = %128
  %143 = load i8*, i8** %5, align 8
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr i8, i8* %143, i64 %145
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @memcpy(i8* %146, %struct.bnxt_coredump_segment_hdr* %12, i32 %147)
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* %21, align 4
  %151 = add nsw i32 %149, %150
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, %151
  store i32 %153, i32* %9, align 4
  br label %154

154:                                              ; preds = %142, %128
  %155 = load i32, i32* %21, align 4
  %156 = load i32*, i32** %6, align 8
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, %155
  store i32 %158, i32* %156, align 4
  %159 = load %struct.coredump_segment_record*, %struct.coredump_segment_record** %8, align 8
  %160 = bitcast %struct.coredump_segment_record* %159 to i32*
  %161 = load i32, i32* %11, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = bitcast i32* %163 to %struct.coredump_segment_record*
  store %struct.coredump_segment_record* %164, %struct.coredump_segment_record** %8, align 8
  br label %165

165:                                              ; preds = %154
  %166 = load i32, i32* %17, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %17, align 4
  br label %79

168:                                              ; preds = %79
  br label %169

169:                                              ; preds = %168, %63
  %170 = load i8*, i8** %5, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %185

172:                                              ; preds = %169
  %173 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %174 = load i8*, i8** %5, align 8
  %175 = load i32, i32* %9, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr i8, i8* %174, i64 %176
  %178 = load i32, i32* %14, align 4
  %179 = load i32, i32* %15, align 4
  %180 = getelementptr inbounds %struct.bnxt_coredump, %struct.bnxt_coredump* %13, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = add nsw i32 %181, 1
  %183 = load i32, i32* %16, align 4
  %184 = call i32 @bnxt_fill_coredump_record(%struct.bnxt* %173, i8* %177, i32 %178, i32 %179, i32 %182, i32 %183)
  br label %185

185:                                              ; preds = %172, %169
  %186 = getelementptr inbounds %struct.bnxt_coredump, %struct.bnxt_coredump* %13, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = call i32 @kfree(i64 %187)
  %189 = load i32*, i32** %6, align 8
  %190 = load i32, i32* %189, align 4
  %191 = sext i32 %190 to i64
  %192 = add i64 %191, 4
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %189, align 4
  %194 = load i32, i32* %16, align 4
  ret i32 %194
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ktime_get_real_seconds(...) #2

declare dso_local i32 @bnxt_fill_coredump_seg_hdr(%struct.bnxt*, %struct.bnxt_coredump_segment_hdr*, %struct.coredump_segment_record*, i32, i32, i32, i32) #2

declare dso_local i32 @memcpy(i8*, %struct.bnxt_coredump_segment_hdr*, i32) #2

declare dso_local i32 @bnxt_hwrm_dbg_coredump_list(%struct.bnxt*, %struct.bnxt_coredump*) #2

declare dso_local i32 @netdev_err(i32, i8*, ...) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i32 @bnxt_hwrm_dbg_coredump_initiate(%struct.bnxt*, i32, i32) #2

declare dso_local i32 @bnxt_hwrm_dbg_coredump_retrieve(%struct.bnxt*, i32, i32, i32*, i8*, i32) #2

declare dso_local i32 @jiffies_to_msecs(i64) #2

declare dso_local i32 @bnxt_fill_coredump_record(%struct.bnxt*, i8*, i32, i32, i32, i32) #2

declare dso_local i32 @kfree(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
