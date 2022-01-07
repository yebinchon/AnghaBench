; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_dump_ps_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_dump_ps_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32 }
%struct.e1000_buffer = type { %struct.e1000_ps_page* }
%struct.e1000_ps_page = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"packet dump for ps_page %d:\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DUMP_PREFIX_ADDRESS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*, %struct.e1000_buffer*)* @e1000e_dump_ps_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000e_dump_ps_pages(%struct.e1000_adapter* %0, %struct.e1000_buffer* %1) #0 {
  %3 = alloca %struct.e1000_adapter*, align 8
  %4 = alloca %struct.e1000_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.e1000_ps_page*, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %3, align 8
  store %struct.e1000_buffer* %1, %struct.e1000_buffer** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %36, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %39

13:                                               ; preds = %7
  %14 = load %struct.e1000_buffer*, %struct.e1000_buffer** %4, align 8
  %15 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %14, i32 0, i32 0
  %16 = load %struct.e1000_ps_page*, %struct.e1000_ps_page** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.e1000_ps_page, %struct.e1000_ps_page* %16, i64 %18
  store %struct.e1000_ps_page* %19, %struct.e1000_ps_page** %6, align 8
  %20 = load %struct.e1000_ps_page*, %struct.e1000_ps_page** %6, align 8
  %21 = getelementptr inbounds %struct.e1000_ps_page, %struct.e1000_ps_page* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %13
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @KERN_INFO, align 4
  %28 = load i32, i32* @DUMP_PREFIX_ADDRESS, align 4
  %29 = load %struct.e1000_ps_page*, %struct.e1000_ps_page** %6, align 8
  %30 = getelementptr inbounds %struct.e1000_ps_page, %struct.e1000_ps_page* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @page_address(i64 %31)
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = call i32 @print_hex_dump(i32 %27, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 16, i32 1, i32 %32, i32 %33, i32 1)
  br label %35

35:                                               ; preds = %24, %13
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %7

39:                                               ; preds = %7
  ret void
}

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @print_hex_dump(i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @page_address(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
