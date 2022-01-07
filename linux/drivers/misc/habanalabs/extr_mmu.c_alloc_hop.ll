; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_mmu.c_alloc_hop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_mmu.c_alloc_hop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_ctx = type { i32, %struct.hl_device* }
%struct.hl_device = type { i32, i32, %struct.asic_fixed_properties }
%struct.asic_fixed_properties = type { i32 }
%struct.pgt_info = type { i32, i64, %struct.hl_ctx*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ULLONG_MAX = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"failed to allocate page\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.hl_ctx*)* @alloc_hop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @alloc_hop(%struct.hl_ctx* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.hl_ctx*, align 8
  %4 = alloca %struct.hl_device*, align 8
  %5 = alloca %struct.asic_fixed_properties*, align 8
  %6 = alloca %struct.pgt_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.hl_ctx* %0, %struct.hl_ctx** %3, align 8
  %9 = load %struct.hl_ctx*, %struct.hl_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %9, i32 0, i32 1
  %11 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  store %struct.hl_device* %11, %struct.hl_device** %4, align 8
  %12 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %13 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %12, i32 0, i32 2
  store %struct.asic_fixed_properties* %13, %struct.asic_fixed_properties** %5, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.pgt_info* @kmalloc(i32 40, i32 %14)
  store %struct.pgt_info* %15, %struct.pgt_info** %6, align 8
  %16 = load %struct.pgt_info*, %struct.pgt_info** %6, align 8
  %17 = icmp ne %struct.pgt_info* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = load i8*, i8** @ULLONG_MAX, align 8
  store i8* %19, i8** %2, align 8
  br label %79

20:                                               ; preds = %1
  %21 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %22 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %5, align 8
  %25 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @gen_pool_alloc(i32 %23, i32 %26)
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %20
  %32 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %33 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %75

36:                                               ; preds = %20
  %37 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %5, align 8
  %38 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i64 @kzalloc(i32 %39, i32 %40)
  %42 = inttoptr i64 %41 to i8*
  store i8* %42, i8** %8, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  br label %66

46:                                               ; preds = %36
  %47 = load i8*, i8** %7, align 8
  %48 = load %struct.pgt_info*, %struct.pgt_info** %6, align 8
  %49 = getelementptr inbounds %struct.pgt_info, %struct.pgt_info* %48, i32 0, i32 4
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load %struct.pgt_info*, %struct.pgt_info** %6, align 8
  %52 = getelementptr inbounds %struct.pgt_info, %struct.pgt_info* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  %53 = load %struct.hl_ctx*, %struct.hl_ctx** %3, align 8
  %54 = load %struct.pgt_info*, %struct.pgt_info** %6, align 8
  %55 = getelementptr inbounds %struct.pgt_info, %struct.pgt_info* %54, i32 0, i32 2
  store %struct.hl_ctx* %53, %struct.hl_ctx** %55, align 8
  %56 = load %struct.pgt_info*, %struct.pgt_info** %6, align 8
  %57 = getelementptr inbounds %struct.pgt_info, %struct.pgt_info* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = load %struct.hl_ctx*, %struct.hl_ctx** %3, align 8
  %59 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.pgt_info*, %struct.pgt_info** %6, align 8
  %62 = getelementptr inbounds %struct.pgt_info, %struct.pgt_info* %61, i32 0, i32 0
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @hash_add(i32 %60, i32* %62, i8* %63)
  %65 = load i8*, i8** %8, align 8
  store i8* %65, i8** %2, align 8
  br label %79

66:                                               ; preds = %45
  %67 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %68 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i8*, i8** %7, align 8
  %71 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %5, align 8
  %72 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @gen_pool_free(i32 %69, i8* %70, i32 %73)
  br label %75

75:                                               ; preds = %66, %31
  %76 = load %struct.pgt_info*, %struct.pgt_info** %6, align 8
  %77 = call i32 @kfree(%struct.pgt_info* %76)
  %78 = load i8*, i8** @ULLONG_MAX, align 8
  store i8* %78, i8** %2, align 8
  br label %79

79:                                               ; preds = %75, %46, %18
  %80 = load i8*, i8** %2, align 8
  ret i8* %80
}

declare dso_local %struct.pgt_info* @kmalloc(i32, i32) #1

declare dso_local i64 @gen_pool_alloc(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32 @hash_add(i32, i32*, i8*) #1

declare dso_local i32 @gen_pool_free(i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.pgt_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
