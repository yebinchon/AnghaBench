; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_main.c_ath6kl_read_fwlogs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_main.c_ath6kl_read_fwlogs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32 }
%struct.ath6kl_dbglog_hdr = type { i32, i32, i32, i32, i32 }
%struct.ath6kl_dbglog_buf = type { i32, i32, i32, i32, i32 }

@ATH6KL_FWLOG_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hi_dbglog_hdr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Invalid address for debug_hdr_addr\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_read_fwlogs(%struct.ath6kl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath6kl*, align 8
  %4 = alloca %struct.ath6kl_dbglog_hdr, align 4
  %5 = alloca %struct.ath6kl_dbglog_buf, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ath6kl_dbglog_hdr*, align 8
  store %struct.ath6kl* %0, %struct.ath6kl** %3, align 8
  %13 = load i32, i32* @ATH6KL_FWLOG_PAYLOAD_SIZE, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.ath6kl_dbglog_hdr* @kmalloc(i32 %13, i32 %14)
  store %struct.ath6kl_dbglog_hdr* %15, %struct.ath6kl_dbglog_hdr** %12, align 8
  %16 = load %struct.ath6kl_dbglog_hdr*, %struct.ath6kl_dbglog_hdr** %12, align 8
  %17 = icmp ne %struct.ath6kl_dbglog_hdr* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %146

21:                                               ; preds = %1
  %22 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %23 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %26 = load i32, i32* @hi_dbglog_hdr, align 4
  %27 = call i32 @HI_ITEM(i32 %26)
  %28 = call i64 @ath6kl_get_hi_item_addr(%struct.ath6kl* %25, i32 %27)
  %29 = call i64 @TARG_VTOP(i32 %24, i64 %28)
  store i64 %29, i64* %6, align 8
  %30 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @ath6kl_diag_read32(%struct.ath6kl* %30, i64 %31, i64* %9)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  br label %142

36:                                               ; preds = %21
  %37 = load i64, i64* %9, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = call i32 @ath6kl_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %10, align 4
  br label %142

43:                                               ; preds = %36
  %44 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %45 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %9, align 8
  %48 = call i64 @TARG_VTOP(i32 %46, i64 %47)
  store i64 %48, i64* %6, align 8
  %49 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @ath6kl_diag_read(%struct.ath6kl* %49, i64 %50, %struct.ath6kl_dbglog_hdr* %4, i32 20)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  br label %142

55:                                               ; preds = %43
  %56 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %57 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.ath6kl_dbglog_hdr, %struct.ath6kl_dbglog_hdr* %4, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @le32_to_cpu(i32 %60)
  %62 = call i64 @TARG_VTOP(i32 %58, i64 %61)
  store i64 %62, i64* %6, align 8
  %63 = load i64, i64* %6, align 8
  store i64 %63, i64* %8, align 8
  %64 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %65 = load i64, i64* %6, align 8
  %66 = bitcast %struct.ath6kl_dbglog_buf* %5 to %struct.ath6kl_dbglog_hdr*
  %67 = call i32 @ath6kl_diag_read(%struct.ath6kl* %64, i64 %65, %struct.ath6kl_dbglog_hdr* %66, i32 20)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %55
  br label %142

71:                                               ; preds = %55
  store i32 100, i32* %11, align 4
  br label %72

72:                                               ; preds = %137, %71
  %73 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %74 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.ath6kl_dbglog_buf, %struct.ath6kl_dbglog_buf* %5, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @le32_to_cpu(i32 %77)
  %79 = call i64 @TARG_VTOP(i32 %75, i64 %78)
  store i64 %79, i64* %6, align 8
  %80 = getelementptr inbounds %struct.ath6kl_dbglog_buf, %struct.ath6kl_dbglog_buf* %5, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @le32_to_cpu(i32 %81)
  store i64 %82, i64* %7, align 8
  %83 = load i64, i64* %7, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %110

85:                                               ; preds = %72
  %86 = getelementptr inbounds %struct.ath6kl_dbglog_buf, %struct.ath6kl_dbglog_buf* %5, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @le32_to_cpu(i32 %87)
  %89 = getelementptr inbounds %struct.ath6kl_dbglog_buf, %struct.ath6kl_dbglog_buf* %5, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @le32_to_cpu(i32 %90)
  %92 = icmp sle i64 %88, %91
  br i1 %92, label %93, label %110

93:                                               ; preds = %85
  %94 = load i64, i64* %7, align 8
  %95 = call i64 @ALIGN(i64 %94, i32 4)
  store i64 %95, i64* %7, align 8
  %96 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %97 = load i64, i64* %6, align 8
  %98 = load %struct.ath6kl_dbglog_hdr*, %struct.ath6kl_dbglog_hdr** %12, align 8
  %99 = load i64, i64* %7, align 8
  %100 = trunc i64 %99 to i32
  %101 = call i32 @ath6kl_diag_read(%struct.ath6kl* %96, i64 %97, %struct.ath6kl_dbglog_hdr* %98, i32 %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %93
  br label %142

105:                                              ; preds = %93
  %106 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %107 = load %struct.ath6kl_dbglog_hdr*, %struct.ath6kl_dbglog_hdr** %12, align 8
  %108 = load i64, i64* %7, align 8
  %109 = call i32 @ath6kl_debug_fwlog_event(%struct.ath6kl* %106, %struct.ath6kl_dbglog_hdr* %107, i64 %108)
  br label %110

110:                                              ; preds = %105, %85, %72
  %111 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %112 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.ath6kl_dbglog_buf, %struct.ath6kl_dbglog_buf* %5, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @le32_to_cpu(i32 %115)
  %117 = call i64 @TARG_VTOP(i32 %113, i64 %116)
  store i64 %117, i64* %6, align 8
  %118 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %119 = load i64, i64* %6, align 8
  %120 = bitcast %struct.ath6kl_dbglog_buf* %5 to %struct.ath6kl_dbglog_hdr*
  %121 = call i32 @ath6kl_diag_read(%struct.ath6kl* %118, i64 %119, %struct.ath6kl_dbglog_hdr* %120, i32 20)
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %10, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %110
  br label %142

125:                                              ; preds = %110
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp eq i32 %128, 0
  %130 = zext i1 %129 to i32
  %131 = call i64 @WARN_ON(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %125
  %134 = load i32, i32* @ETIMEDOUT, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %10, align 4
  br label %142

136:                                              ; preds = %125
  br label %137

137:                                              ; preds = %136
  %138 = load i64, i64* %6, align 8
  %139 = load i64, i64* %8, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %72, label %141

141:                                              ; preds = %137
  br label %142

142:                                              ; preds = %141, %133, %124, %104, %70, %54, %39, %35
  %143 = load %struct.ath6kl_dbglog_hdr*, %struct.ath6kl_dbglog_hdr** %12, align 8
  %144 = call i32 @kfree(%struct.ath6kl_dbglog_hdr* %143)
  %145 = load i32, i32* %10, align 4
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %142, %18
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local %struct.ath6kl_dbglog_hdr* @kmalloc(i32, i32) #1

declare dso_local i64 @TARG_VTOP(i32, i64) #1

declare dso_local i64 @ath6kl_get_hi_item_addr(%struct.ath6kl*, i32) #1

declare dso_local i32 @HI_ITEM(i32) #1

declare dso_local i32 @ath6kl_diag_read32(%struct.ath6kl*, i64, i64*) #1

declare dso_local i32 @ath6kl_warn(i8*) #1

declare dso_local i32 @ath6kl_diag_read(%struct.ath6kl*, i64, %struct.ath6kl_dbglog_hdr*, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @ath6kl_debug_fwlog_event(%struct.ath6kl*, %struct.ath6kl_dbglog_hdr*, i64) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @kfree(%struct.ath6kl_dbglog_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
