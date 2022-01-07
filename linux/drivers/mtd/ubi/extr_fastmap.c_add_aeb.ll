; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_fastmap.c_add_aeb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_fastmap.c_add_aeb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_attach_info = type { i64, i64, i32, i32 }
%struct.list_head = type { i32 }
%struct.ubi_ainf_peb = type { i32, i32, i64, %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_attach_info*, %struct.list_head*, i32, i32, i32)* @add_aeb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_aeb(%struct.ubi_attach_info* %0, %struct.list_head* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubi_attach_info*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ubi_ainf_peb*, align 8
  store %struct.ubi_attach_info* %0, %struct.ubi_attach_info** %7, align 8
  store %struct.list_head* %1, %struct.list_head** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call %struct.ubi_ainf_peb* @ubi_alloc_aeb(%struct.ubi_attach_info* %13, i32 %14, i32 %15)
  store %struct.ubi_ainf_peb* %16, %struct.ubi_ainf_peb** %12, align 8
  %17 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %12, align 8
  %18 = icmp ne %struct.ubi_ainf_peb* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %78

22:                                               ; preds = %5
  %23 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %12, align 8
  %24 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %23, i32 0, i32 0
  store i32 -1, i32* %24, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %12, align 8
  %27 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %12, align 8
  %29 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %28, i32 0, i32 4
  store i64 0, i64* %29, align 8
  %30 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %12, align 8
  %31 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %30, i32 0, i32 5
  store i64 0, i64* %31, align 8
  %32 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %12, align 8
  %33 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %36 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %34
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %36, align 4
  %41 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %42 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %46 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %12, align 8
  %49 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %47, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %22
  %53 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %12, align 8
  %54 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %57 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %52, %22
  %59 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %60 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %12, align 8
  %63 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %61, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %58
  %67 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %12, align 8
  %68 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %71 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %66, %58
  %73 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %12, align 8
  %74 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load %struct.list_head*, %struct.list_head** %8, align 8
  %77 = call i32 @list_add_tail(i32* %75, %struct.list_head* %76)
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %72, %19
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local %struct.ubi_ainf_peb* @ubi_alloc_aeb(%struct.ubi_attach_info*, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
