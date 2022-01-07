; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_attach.c_add_to_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_attach.c_add_to_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_attach_info = type { i32, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.list_head = type { i32 }
%struct.ubi_ainf_peb = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"add to free: PEB %d, EC %d\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"add to erase: PEB %d, EC %d\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"add to alien: PEB %d, EC %d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_attach_info*, i32, i32, i32, i32, i32, %struct.list_head*)* @add_to_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_to_list(%struct.ubi_attach_info* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.list_head* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ubi_attach_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.list_head*, align 8
  %16 = alloca %struct.ubi_ainf_peb*, align 8
  store %struct.ubi_attach_info* %0, %struct.ubi_attach_info** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.list_head* %6, %struct.list_head** %15, align 8
  %17 = load %struct.list_head*, %struct.list_head** %15, align 8
  %18 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %9, align 8
  %19 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %18, i32 0, i32 3
  %20 = icmp eq %struct.list_head* %17, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %7
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %13, align 4
  %24 = call i32 @dbg_bld(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  br label %51

25:                                               ; preds = %7
  %26 = load %struct.list_head*, %struct.list_head** %15, align 8
  %27 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %9, align 8
  %28 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %27, i32 0, i32 2
  %29 = icmp eq %struct.list_head* %26, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @dbg_bld(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %32)
  br label %50

34:                                               ; preds = %25
  %35 = load %struct.list_head*, %struct.list_head** %15, align 8
  %36 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %9, align 8
  %37 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %36, i32 0, i32 1
  %38 = icmp eq %struct.list_head* %35, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @dbg_bld(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %9, align 8
  %44 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %49

47:                                               ; preds = %34
  %48 = call i32 (...) @BUG()
  br label %49

49:                                               ; preds = %47, %39
  br label %50

50:                                               ; preds = %49, %30
  br label %51

51:                                               ; preds = %50, %21
  %52 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %13, align 4
  %55 = call %struct.ubi_ainf_peb* @ubi_alloc_aeb(%struct.ubi_attach_info* %52, i32 %53, i32 %54)
  store %struct.ubi_ainf_peb* %55, %struct.ubi_ainf_peb** %16, align 8
  %56 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %16, align 8
  %57 = icmp ne %struct.ubi_ainf_peb* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %8, align 4
  br label %83

61:                                               ; preds = %51
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %16, align 8
  %64 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %16, align 8
  %67 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %61
  %71 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %16, align 8
  %72 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load %struct.list_head*, %struct.list_head** %15, align 8
  %75 = call i32 @list_add(i32* %73, %struct.list_head* %74)
  br label %82

76:                                               ; preds = %61
  %77 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %16, align 8
  %78 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load %struct.list_head*, %struct.list_head** %15, align 8
  %81 = call i32 @list_add_tail(i32* %79, %struct.list_head* %80)
  br label %82

82:                                               ; preds = %76, %70
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %82, %58
  %84 = load i32, i32* %8, align 4
  ret i32 %84
}

declare dso_local i32 @dbg_bld(i8*, i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local %struct.ubi_ainf_peb* @ubi_alloc_aeb(%struct.ubi_attach_info*, i32, i32) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
