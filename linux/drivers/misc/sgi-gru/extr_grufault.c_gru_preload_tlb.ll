; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grufault.c_gru_preload_tlb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grufault.c_gru_preload_tlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_state = type { i32 }
%struct.gru_thread_state = type { i32 }
%struct.gru_tlb_fault_handle = type { i32 }
%struct.gru_control_block_extended = type { i64, i64, i64, i64, i32, i32 }

@OP_BCOPY = common dso_local global i64 0, align 8
@GRU_CACHE_LINE_BYTES = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i8 0, align 1
@GAA_RAM = common dso_local global i32 0, align 4
@grudev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"%s: gid %d, gts 0x%p, tfh 0x%p, vaddr 0x%lx, asid 0x%x, rw %d, ps %d, gpa 0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"atomic\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"non-atomic\00", align 1
@tlb_preload_page = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gru_state*, %struct.gru_thread_state*, i32, i64, i32, i32, i8, %struct.gru_tlb_fault_handle*, %struct.gru_control_block_extended*)* @gru_preload_tlb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gru_preload_tlb(%struct.gru_state* %0, %struct.gru_thread_state* %1, i32 %2, i64 %3, i32 %4, i32 %5, i8 zeroext %6, %struct.gru_tlb_fault_handle* %7, %struct.gru_control_block_extended* %8) #0 {
  %10 = alloca %struct.gru_state*, align 8
  %11 = alloca %struct.gru_thread_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca %struct.gru_tlb_fault_handle*, align 8
  %18 = alloca %struct.gru_control_block_extended*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.gru_state* %0, %struct.gru_state** %10, align 8
  store %struct.gru_thread_state* %1, %struct.gru_thread_state** %11, align 8
  store i32 %2, i32* %12, align 4
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8 %6, i8* %16, align 1
  store %struct.gru_tlb_fault_handle* %7, %struct.gru_tlb_fault_handle** %17, align 8
  store %struct.gru_control_block_extended* %8, %struct.gru_control_block_extended** %18, align 8
  store i64 0, i64* %19, align 8
  %23 = load %struct.gru_control_block_extended*, %struct.gru_control_block_extended** %18, align 8
  %24 = getelementptr inbounds %struct.gru_control_block_extended, %struct.gru_control_block_extended* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @OP_BCOPY, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %9
  br label %128

29:                                               ; preds = %9
  %30 = load i64, i64* %13, align 8
  %31 = load %struct.gru_control_block_extended*, %struct.gru_control_block_extended** %18, align 8
  %32 = getelementptr inbounds %struct.gru_control_block_extended, %struct.gru_control_block_extended* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load i64, i64* %13, align 8
  %37 = load i64, i64* @GRU_CACHE_LINE_BYTES, align 8
  %38 = load %struct.gru_control_block_extended*, %struct.gru_control_block_extended** %18, align 8
  %39 = getelementptr inbounds %struct.gru_control_block_extended, %struct.gru_control_block_extended* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = mul i64 %37, %40
  %42 = add i64 %36, %41
  %43 = sub i64 %42, 1
  store i64 %43, i64* %19, align 8
  br label %64

44:                                               ; preds = %29
  %45 = load i64, i64* %13, align 8
  %46 = load %struct.gru_control_block_extended*, %struct.gru_control_block_extended** %18, align 8
  %47 = getelementptr inbounds %struct.gru_control_block_extended, %struct.gru_control_block_extended* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %45, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %44
  %51 = load i64, i64* %13, align 8
  %52 = load %struct.gru_control_block_extended*, %struct.gru_control_block_extended** %18, align 8
  %53 = getelementptr inbounds %struct.gru_control_block_extended, %struct.gru_control_block_extended* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = shl i32 1, %54
  %56 = load %struct.gru_control_block_extended*, %struct.gru_control_block_extended** %18, align 8
  %57 = getelementptr inbounds %struct.gru_control_block_extended, %struct.gru_control_block_extended* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %55, %58
  %60 = sext i32 %59 to i64
  %61 = add i64 %51, %60
  %62 = sub i64 %61, 1
  store i64 %62, i64* %19, align 8
  br label %63

63:                                               ; preds = %50, %44
  br label %64

64:                                               ; preds = %63, %35
  %65 = load i64, i64* @PAGE_MASK, align 8
  %66 = load i64, i64* %13, align 8
  %67 = and i64 %66, %65
  store i64 %67, i64* %13, align 8
  %68 = load i64, i64* @PAGE_MASK, align 8
  %69 = load i64, i64* %19, align 8
  %70 = and i64 %69, %68
  store i64 %70, i64* %19, align 8
  %71 = load i64, i64* %19, align 8
  %72 = load i64, i64* %13, align 8
  %73 = load i8, i8* %16, align 1
  %74 = zext i8 %73 to i32
  %75 = load i8, i8* @PAGE_SIZE, align 1
  %76 = zext i8 %75 to i32
  %77 = mul nsw i32 %74, %76
  %78 = sext i32 %77 to i64
  %79 = add i64 %72, %78
  %80 = call i64 @min(i64 %71, i64 %79)
  store i64 %80, i64* %19, align 8
  br label %81

81:                                               ; preds = %105, %64
  %82 = load i64, i64* %19, align 8
  %83 = load i64, i64* %13, align 8
  %84 = icmp ugt i64 %82, %83
  br i1 %84, label %85, label %128

85:                                               ; preds = %81
  %86 = load %struct.gru_thread_state*, %struct.gru_thread_state** %11, align 8
  %87 = load i64, i64* %19, align 8
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @gru_vtop(%struct.gru_thread_state* %86, i64 %87, i32 %88, i32 %89, i64* %20, i32* %22)
  store i32 %90, i32* %21, align 4
  %91 = load i32, i32* %21, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %104, label %93

93:                                               ; preds = %85
  %94 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %17, align 8
  %95 = load i64, i64* %20, align 8
  %96 = load i32, i32* @GAA_RAM, align 4
  %97 = load i64, i64* %19, align 8
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %22, align 4
  %101 = call i32 @GRU_PAGESIZE(i32 %100)
  %102 = call i64 @tfh_write_only(%struct.gru_tlb_fault_handle* %94, i64 %95, i32 %96, i64 %97, i32 %98, i32 %99, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %93, %85
  br label %128

105:                                              ; preds = %93
  %106 = load i32, i32* @grudev, align 4
  %107 = load i32, i32* %12, align 4
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)
  %111 = load %struct.gru_state*, %struct.gru_state** %10, align 8
  %112 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.gru_thread_state*, %struct.gru_thread_state** %11, align 8
  %115 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %17, align 8
  %116 = load i64, i64* %19, align 8
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* %22, align 4
  %120 = load i64, i64* %20, align 8
  %121 = call i32 @gru_dbg(i32 %106, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i8* %110, i32 %113, %struct.gru_thread_state* %114, %struct.gru_tlb_fault_handle* %115, i64 %116, i32 %117, i32 %118, i32 %119, i64 %120)
  %122 = load i8, i8* @PAGE_SIZE, align 1
  %123 = zext i8 %122 to i64
  %124 = load i64, i64* %19, align 8
  %125 = sub i64 %124, %123
  store i64 %125, i64* %19, align 8
  %126 = load i32, i32* @tlb_preload_page, align 4
  %127 = call i32 @STAT(i32 %126)
  br label %81

128:                                              ; preds = %28, %104, %81
  ret void
}

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @gru_vtop(%struct.gru_thread_state*, i64, i32, i32, i64*, i32*) #1

declare dso_local i64 @tfh_write_only(%struct.gru_tlb_fault_handle*, i64, i32, i64, i32, i32, i32) #1

declare dso_local i32 @GRU_PAGESIZE(i32) #1

declare dso_local i32 @gru_dbg(i32, i8*, i8*, i32, %struct.gru_thread_state*, %struct.gru_tlb_fault_handle*, i64, i32, i32, i32, i64) #1

declare dso_local i32 @STAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
