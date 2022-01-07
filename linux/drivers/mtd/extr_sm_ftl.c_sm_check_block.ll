; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_sm_ftl.c_sm_check_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_sm_ftl.c_sm_check_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm_ftl = type { i32 }
%struct.sm_oob = type { i32 }

@__const.sm_check_block.lbas = private unnamed_addr constant [4 x i32] [i32 -3, i32 0, i32 0, i32 0], align 16
@EIO = common dso_local global i32 0, align 4
@SM_SECTOR_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sm_ftl*, i32, i32)* @sm_check_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm_check_block(%struct.sm_ftl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sm_ftl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sm_oob, align 4
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sm_ftl* %0, %struct.sm_ftl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = bitcast [4 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([4 x i32]* @__const.sm_check_block.lbas to i8*), i64 16, i1 false)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %49, %3
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.sm_ftl*, %struct.sm_ftl** %5, align 8
  %17 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %55

20:                                               ; preds = %14
  %21 = load %struct.sm_ftl*, %struct.sm_ftl** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @sm_read_sector(%struct.sm_ftl* %21, i32 %22, i32 %23, i32 %24, i32* null, %struct.sm_oob* %9)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 -2, i32* %4, align 4
  br label %64

28:                                               ; preds = %20
  %29 = call i32 @sm_read_lba(%struct.sm_oob* %9)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %40
  store i32 %37, i32* %41, align 4
  br label %42

42:                                               ; preds = %36, %28
  %43 = load i32, i32* %11, align 4
  %44 = icmp eq i32 %43, 3
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %64

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* @SM_SECTOR_SIZE, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %8, align 4
  br label %14

55:                                               ; preds = %14
  %56 = load i32, i32* %11, align 4
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load %struct.sm_ftl*, %struct.sm_ftl** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @sm_erase_block(%struct.sm_ftl* %59, i32 %60, i32 %61, i32 1)
  store i32 1, i32* %4, align 4
  br label %64

63:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %58, %45, %27
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @sm_read_sector(%struct.sm_ftl*, i32, i32, i32, i32*, %struct.sm_oob*) #2

declare dso_local i32 @sm_read_lba(%struct.sm_oob*) #2

declare dso_local i32 @sm_erase_block(%struct.sm_ftl*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
