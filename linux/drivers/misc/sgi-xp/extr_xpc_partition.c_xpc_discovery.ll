; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_partition.c_xpc_discovery.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_partition.c_xpc_discovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.xpc_rsvd_page*, i64, i32)* }
%struct.xpc_rsvd_page = type { i32 }

@XPC_RP_HEADER_SIZE = common dso_local global i64 0, align 8
@xpc_nasid_mask_nbytes = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@xpc_nasid_mask_nlongs = common dso_local global i32 0, align 4
@xp_region_size = common dso_local global i32 0, align 4
@xpc_exiting = common dso_local global i64 0, align 8
@xpc_part = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"searching region %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"checking nasid %d\0A\00", align 1
@xpc_part_nasids = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [73 x i8] c"PROM indicates Nasid %d is part of the local partition; skipping region\0A\00", align 1
@xpc_mach_nasids = common dso_local global i64* null, align 8
@.str.3 = private unnamed_addr constant [63 x i8] c"PROM indicates Nasid %d was not on Numa-Link network at reset\0A\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"Nasid %d is part of a partition which was previously discovered\0A\00", align 1
@xpSuccess = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [54 x i8] c"unable to get reserved page from nasid %d, reason=%d\0A\00", align 1
@xpLocalPartid = common dso_local global i32 0, align 4
@xpc_arch_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xpc_discovery() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.xpc_rsvd_page*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = load i64, i64* @XPC_RP_HEADER_SIZE, align 8
  %11 = load i64, i64* @xpc_nasid_mask_nbytes, align 8
  %12 = add nsw i64 %10, %11
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.xpc_rsvd_page* @xpc_kmalloc_cacheline_aligned(i64 %12, i32 %13, i8** %1)
  store %struct.xpc_rsvd_page* %14, %struct.xpc_rsvd_page** %2, align 8
  %15 = load %struct.xpc_rsvd_page*, %struct.xpc_rsvd_page** %2, align 8
  %16 = icmp eq %struct.xpc_rsvd_page* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %0
  br label %143

18:                                               ; preds = %0
  %19 = load i32, i32* @xpc_nasid_mask_nlongs, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i64* @kcalloc(i32 %19, i32 8, i32 %20)
  store i64* %21, i64** %8, align 8
  %22 = load i64*, i64** %8, align 8
  %23 = icmp eq i64* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i8*, i8** %1, align 8
  %26 = call i32 @kfree(i8* %25)
  br label %143

27:                                               ; preds = %18
  %28 = load i32, i32* @xp_region_size, align 4
  store i32 %28, i32* %5, align 4
  %29 = call i64 (...) @is_uv()
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 256, i32* %6, align 4
  br label %44

32:                                               ; preds = %27
  store i32 64, i32* %6, align 4
  %33 = load i32, i32* %5, align 4
  switch i32 %33, label %43 [
    i32 128, label %34
    i32 64, label %37
    i32 32, label %40
  ]

34:                                               ; preds = %32
  %35 = load i32, i32* %6, align 4
  %36 = mul nsw i32 %35, 2
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %32, %34
  %38 = load i32, i32* %6, align 4
  %39 = mul nsw i32 %38, 2
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %32, %37
  %41 = load i32, i32* %6, align 4
  %42 = mul nsw i32 %41, 2
  store i32 %42, i32* %6, align 4
  store i32 16, i32* %5, align 4
  br label %43

43:                                               ; preds = %40, %32
  br label %44

44:                                               ; preds = %43, %31
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %134, %44
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %137

49:                                               ; preds = %45
  %50 = load i64, i64* @xpc_exiting, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %137

53:                                               ; preds = %49
  %54 = load i32, i32* @xpc_part, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %5, align 4
  %59 = mul nsw i32 %57, %58
  %60 = mul nsw i32 %59, 2
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %130, %53
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  %65 = load i32, i32* %5, align 4
  %66 = mul nsw i32 %64, %65
  %67 = mul nsw i32 %66, 2
  %68 = icmp slt i32 %62, %67
  br i1 %68, label %69, label %133

69:                                               ; preds = %61
  %70 = load i64, i64* @xpc_exiting, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %133

73:                                               ; preds = %69
  %74 = load i32, i32* @xpc_part, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %74, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %7, align 4
  %78 = sdiv i32 %77, 2
  %79 = load i64*, i64** @xpc_part_nasids, align 8
  %80 = call i64 @test_bit(i32 %78, i64* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %73
  %83 = load i32, i32* @xpc_part, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %83, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  br label %133

86:                                               ; preds = %73
  %87 = load i32, i32* %7, align 4
  %88 = sdiv i32 %87, 2
  %89 = load i64*, i64** @xpc_mach_nasids, align 8
  %90 = call i64 @test_bit(i32 %88, i64* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %86
  %93 = load i32, i32* @xpc_part, align 4
  %94 = load i32, i32* %7, align 4
  %95 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %93, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  br label %130

96:                                               ; preds = %86
  %97 = load i32, i32* %7, align 4
  %98 = sdiv i32 %97, 2
  %99 = load i64*, i64** %8, align 8
  %100 = call i64 @test_bit(i32 %98, i64* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load i32, i32* @xpc_part, align 4
  %104 = load i32, i32* %7, align 4
  %105 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %103, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i32 %104)
  br label %130

106:                                              ; preds = %96
  %107 = load i32, i32* %7, align 4
  %108 = load i64*, i64** %8, align 8
  %109 = load %struct.xpc_rsvd_page*, %struct.xpc_rsvd_page** %2, align 8
  %110 = call i32 @xpc_get_remote_rp(i32 %107, i64* %108, %struct.xpc_rsvd_page* %109, i64* %3)
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @xpSuccess, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %106
  %115 = load i32, i32* @xpc_part, align 4
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %9, align 4
  %118 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %115, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 %116, i32 %117)
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @xpLocalPartid, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  br label %133

123:                                              ; preds = %114
  br label %130

124:                                              ; preds = %106
  %125 = load i32 (%struct.xpc_rsvd_page*, i64, i32)*, i32 (%struct.xpc_rsvd_page*, i64, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 0), align 8
  %126 = load %struct.xpc_rsvd_page*, %struct.xpc_rsvd_page** %2, align 8
  %127 = load i64, i64* %3, align 8
  %128 = load i32, i32* %7, align 4
  %129 = call i32 %125(%struct.xpc_rsvd_page* %126, i64 %127, i32 %128)
  br label %130

130:                                              ; preds = %124, %123, %102, %92
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %131, 2
  store i32 %132, i32* %7, align 4
  br label %61

133:                                              ; preds = %122, %82, %72, %61
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %4, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %4, align 4
  br label %45

137:                                              ; preds = %52, %45
  %138 = load i64*, i64** %8, align 8
  %139 = bitcast i64* %138 to i8*
  %140 = call i32 @kfree(i8* %139)
  %141 = load i8*, i8** %1, align 8
  %142 = call i32 @kfree(i8* %141)
  br label %143

143:                                              ; preds = %137, %24, %17
  ret void
}

declare dso_local %struct.xpc_rsvd_page* @xpc_kmalloc_cacheline_aligned(i64, i32, i8**) #1

declare dso_local i64* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i64 @is_uv(...) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @xpc_get_remote_rp(i32, i64*, %struct.xpc_rsvd_page*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
