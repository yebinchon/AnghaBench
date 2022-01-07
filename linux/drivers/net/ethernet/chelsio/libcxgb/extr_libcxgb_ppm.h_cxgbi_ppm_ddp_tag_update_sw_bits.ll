; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/libcxgb/extr_libcxgb_ppm.h_cxgbi_ppm_ddp_tag_update_sw_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/libcxgb/extr_libcxgb_ppm.h_cxgbi_ppm_ddp_tag_update_sw_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_ppm = type { %struct.cxgbi_tag_format }
%struct.cxgbi_tag_format = type { i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"sw_bits 0x%x too large, avail bits %u.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbi_ppm*, i32, i32, i32*)* @cxgbi_ppm_ddp_tag_update_sw_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgbi_ppm_ddp_tag_update_sw_bits(%struct.cxgbi_ppm* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cxgbi_ppm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.cxgbi_tag_format*, align 8
  %11 = alloca i32, align 4
  store %struct.cxgbi_ppm* %0, %struct.cxgbi_ppm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.cxgbi_ppm*, %struct.cxgbi_ppm** %6, align 8
  %13 = getelementptr inbounds %struct.cxgbi_ppm, %struct.cxgbi_ppm* %12, i32 0, i32 0
  store %struct.cxgbi_tag_format* %13, %struct.cxgbi_tag_format** %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.cxgbi_tag_format*, %struct.cxgbi_tag_format** %10, align 8
  %16 = getelementptr inbounds %struct.cxgbi_tag_format, %struct.cxgbi_tag_format* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %14, %17
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.cxgbi_tag_format*, %struct.cxgbi_tag_format** %10, align 8
  %24 = getelementptr inbounds %struct.cxgbi_tag_format, %struct.cxgbi_tag_format* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %51

29:                                               ; preds = %4
  %30 = load %struct.cxgbi_ppm*, %struct.cxgbi_ppm** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @cxgbi_ppm_is_ddp_tag(%struct.cxgbi_ppm* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %51

37:                                               ; preds = %29
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.cxgbi_tag_format*, %struct.cxgbi_tag_format** %10, align 8
  %40 = getelementptr inbounds %struct.cxgbi_tag_format, %struct.cxgbi_tag_format* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %38, %41
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.cxgbi_ppm*, %struct.cxgbi_ppm** %6, align 8
  %45 = getelementptr inbounds %struct.cxgbi_ppm, %struct.cxgbi_ppm* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.cxgbi_tag_format, %struct.cxgbi_tag_format* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %43, %47
  %49 = or i32 %42, %48
  %50 = load i32*, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %37, %34, %21
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @cxgbi_ppm_is_ddp_tag(%struct.cxgbi_ppm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
