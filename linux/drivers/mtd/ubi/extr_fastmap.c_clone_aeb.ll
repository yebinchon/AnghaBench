; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_fastmap.c_clone_aeb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_fastmap.c_clone_aeb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_attach_info = type { i32 }
%struct.ubi_ainf_peb = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ubi_ainf_peb* (%struct.ubi_attach_info*, %struct.ubi_ainf_peb*)* @clone_aeb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ubi_ainf_peb* @clone_aeb(%struct.ubi_attach_info* %0, %struct.ubi_ainf_peb* %1) #0 {
  %3 = alloca %struct.ubi_ainf_peb*, align 8
  %4 = alloca %struct.ubi_attach_info*, align 8
  %5 = alloca %struct.ubi_ainf_peb*, align 8
  %6 = alloca %struct.ubi_ainf_peb*, align 8
  store %struct.ubi_attach_info* %0, %struct.ubi_attach_info** %4, align 8
  store %struct.ubi_ainf_peb* %1, %struct.ubi_ainf_peb** %5, align 8
  %7 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %4, align 8
  %8 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %5, align 8
  %9 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %5, align 8
  %12 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.ubi_ainf_peb* @ubi_alloc_aeb(%struct.ubi_attach_info* %7, i32 %10, i32 %13)
  store %struct.ubi_ainf_peb* %14, %struct.ubi_ainf_peb** %6, align 8
  %15 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %6, align 8
  %16 = icmp ne %struct.ubi_ainf_peb* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store %struct.ubi_ainf_peb* null, %struct.ubi_ainf_peb** %3, align 8
  br label %45

18:                                               ; preds = %2
  %19 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %5, align 8
  %20 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %6, align 8
  %23 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %5, align 8
  %25 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %6, align 8
  %28 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %5, align 8
  %30 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %6, align 8
  %33 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %5, align 8
  %35 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %6, align 8
  %38 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %5, align 8
  %40 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %6, align 8
  %43 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %6, align 8
  store %struct.ubi_ainf_peb* %44, %struct.ubi_ainf_peb** %3, align 8
  br label %45

45:                                               ; preds = %18, %17
  %46 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %3, align 8
  ret %struct.ubi_ainf_peb* %46
}

declare dso_local %struct.ubi_ainf_peb* @ubi_alloc_aeb(%struct.ubi_attach_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
