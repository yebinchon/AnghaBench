; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_attach.c_ubi_alloc_aeb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_attach.c_ubi_alloc_aeb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_ainf_peb = type { i32, i32, i8*, i8* }
%struct.ubi_attach_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@UBI_UNKNOWN = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ubi_ainf_peb* @ubi_alloc_aeb(%struct.ubi_attach_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ubi_ainf_peb*, align 8
  %5 = alloca %struct.ubi_attach_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubi_ainf_peb*, align 8
  store %struct.ubi_attach_info* %0, %struct.ubi_attach_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %5, align 8
  %10 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ubi_ainf_peb* @kmem_cache_zalloc(i32 %11, i32 %12)
  store %struct.ubi_ainf_peb* %13, %struct.ubi_ainf_peb** %8, align 8
  %14 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %8, align 8
  %15 = icmp ne %struct.ubi_ainf_peb* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.ubi_ainf_peb* null, %struct.ubi_ainf_peb** %4, align 8
  br label %31

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %8, align 8
  %20 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %8, align 8
  %23 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i8*, i8** @UBI_UNKNOWN, align 8
  %25 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %8, align 8
  %26 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** @UBI_UNKNOWN, align 8
  %28 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %8, align 8
  %29 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %8, align 8
  store %struct.ubi_ainf_peb* %30, %struct.ubi_ainf_peb** %4, align 8
  br label %31

31:                                               ; preds = %17, %16
  %32 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %4, align 8
  ret %struct.ubi_ainf_peb* %32
}

declare dso_local %struct.ubi_ainf_peb* @kmem_cache_zalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
