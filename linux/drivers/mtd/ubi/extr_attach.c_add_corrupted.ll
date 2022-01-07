; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_attach.c_add_corrupted.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_attach.c_add_corrupted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_attach_info = type { i32, i32 }
%struct.ubi_ainf_peb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"add to corrupted: PEB %d, EC %d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_attach_info*, i32, i32)* @add_corrupted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_corrupted(%struct.ubi_attach_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubi_attach_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubi_ainf_peb*, align 8
  store %struct.ubi_attach_info* %0, %struct.ubi_attach_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @dbg_bld(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10)
  %12 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.ubi_ainf_peb* @ubi_alloc_aeb(%struct.ubi_attach_info* %12, i32 %13, i32 %14)
  store %struct.ubi_ainf_peb* %15, %struct.ubi_ainf_peb** %8, align 8
  %16 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %8, align 8
  %17 = icmp ne %struct.ubi_ainf_peb* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %32

21:                                               ; preds = %3
  %22 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %5, align 8
  %23 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %8, align 8
  %27 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %5, align 8
  %30 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %29, i32 0, i32 1
  %31 = call i32 @list_add(i32* %28, i32* %30)
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %21, %18
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @dbg_bld(i8*, i32, i32) #1

declare dso_local %struct.ubi_ainf_peb* @ubi_alloc_aeb(%struct.ubi_attach_info*, i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
