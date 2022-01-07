; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ddp.c_i40e_add_pinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ddp.c_i40e_add_pinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_profile_segment = type { i32, i32 }
%struct.i40e_profile_section_header = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.i40e_profile_info = type { i32, i32, i32, i32, i32 }

@SECTION_TYPE_INFO = common dso_local global i32 0, align 4
@I40E_DDP_ADD_TRACKID = common dso_local global i32 0, align 4
@I40E_DDP_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_hw*, %struct.i40e_profile_segment*, i32*, i32)* @i40e_add_pinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_add_pinfo(%struct.i40e_hw* %0, %struct.i40e_profile_segment* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca %struct.i40e_profile_segment*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.i40e_profile_section_header*, align 8
  %10 = alloca %struct.i40e_profile_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %5, align 8
  store %struct.i40e_profile_segment* %1, %struct.i40e_profile_segment** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = bitcast i32* %14 to %struct.i40e_profile_section_header*
  store %struct.i40e_profile_section_header* %15, %struct.i40e_profile_section_header** %9, align 8
  %16 = load %struct.i40e_profile_section_header*, %struct.i40e_profile_section_header** %9, align 8
  %17 = getelementptr inbounds %struct.i40e_profile_section_header, %struct.i40e_profile_section_header* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load %struct.i40e_profile_section_header*, %struct.i40e_profile_section_header** %9, align 8
  %19 = getelementptr inbounds %struct.i40e_profile_section_header, %struct.i40e_profile_section_header* %18, i32 0, i32 1
  store i32 40, i32* %19, align 4
  %20 = load i32, i32* @SECTION_TYPE_INFO, align 4
  %21 = load %struct.i40e_profile_section_header*, %struct.i40e_profile_section_header** %9, align 8
  %22 = getelementptr inbounds %struct.i40e_profile_section_header, %struct.i40e_profile_section_header* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 4
  %24 = load %struct.i40e_profile_section_header*, %struct.i40e_profile_section_header** %9, align 8
  %25 = getelementptr inbounds %struct.i40e_profile_section_header, %struct.i40e_profile_section_header* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 20, i32* %26, align 4
  %27 = load %struct.i40e_profile_section_header*, %struct.i40e_profile_section_header** %9, align 8
  %28 = getelementptr inbounds %struct.i40e_profile_section_header, %struct.i40e_profile_section_header* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32 20, i32* %29, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = load %struct.i40e_profile_section_header*, %struct.i40e_profile_section_header** %9, align 8
  %32 = getelementptr inbounds %struct.i40e_profile_section_header, %struct.i40e_profile_section_header* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %30, i64 %35
  %37 = bitcast i32* %36 to %struct.i40e_profile_info*
  store %struct.i40e_profile_info* %37, %struct.i40e_profile_info** %10, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.i40e_profile_info*, %struct.i40e_profile_info** %10, align 8
  %40 = getelementptr inbounds %struct.i40e_profile_info, %struct.i40e_profile_info* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load %struct.i40e_profile_segment*, %struct.i40e_profile_segment** %6, align 8
  %42 = getelementptr inbounds %struct.i40e_profile_segment, %struct.i40e_profile_segment* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.i40e_profile_info*, %struct.i40e_profile_info** %10, align 8
  %45 = getelementptr inbounds %struct.i40e_profile_info, %struct.i40e_profile_info* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @I40E_DDP_ADD_TRACKID, align 4
  %47 = load %struct.i40e_profile_info*, %struct.i40e_profile_info** %10, align 8
  %48 = getelementptr inbounds %struct.i40e_profile_info, %struct.i40e_profile_info* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.i40e_profile_info*, %struct.i40e_profile_info** %10, align 8
  %50 = getelementptr inbounds %struct.i40e_profile_info, %struct.i40e_profile_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @memset(i32 %51, i32 0, i32 4)
  %53 = load %struct.i40e_profile_info*, %struct.i40e_profile_info** %10, align 8
  %54 = getelementptr inbounds %struct.i40e_profile_info, %struct.i40e_profile_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.i40e_profile_segment*, %struct.i40e_profile_segment** %6, align 8
  %57 = getelementptr inbounds %struct.i40e_profile_segment, %struct.i40e_profile_segment* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @I40E_DDP_NAME_SIZE, align 4
  %60 = call i32 @memcpy(i32 %55, i32 %58, i32 %59)
  %61 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %62 = load %struct.i40e_profile_section_header*, %struct.i40e_profile_section_header** %9, align 8
  %63 = bitcast %struct.i40e_profile_section_header* %62 to i8*
  %64 = load %struct.i40e_profile_section_header*, %struct.i40e_profile_section_header** %9, align 8
  %65 = getelementptr inbounds %struct.i40e_profile_section_header, %struct.i40e_profile_section_header* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @i40e_aq_write_ddp(%struct.i40e_hw* %61, i8* %63, i32 %66, i32 %67, i32* %12, i32* %13, i32* null)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  ret i32 %69
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @i40e_aq_write_ddp(%struct.i40e_hw*, i8*, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
