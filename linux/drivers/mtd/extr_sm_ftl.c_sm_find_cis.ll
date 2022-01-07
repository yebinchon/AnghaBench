; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_sm_ftl.c_sm_find_cis.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_sm_ftl.c_sm_find_cis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm_ftl = type { i32, i32, i32, i32, i32, i64 }
%struct.sm_oob = type { i32 }

@EIO = common dso_local global i32 0, align 4
@SM_SECTOR_SIZE = common dso_local global i64 0, align 8
@SM_SMALL_PAGE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"CIS block found at offset %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sm_ftl*)* @sm_find_cis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm_find_cis(%struct.sm_ftl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sm_ftl*, align 8
  %4 = alloca %struct.sm_oob, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sm_ftl* %0, %struct.sm_ftl** %3, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %30, %1
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.sm_ftl*, %struct.sm_ftl** %3, align 8
  %12 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.sm_ftl*, %struct.sm_ftl** %3, align 8
  %15 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %13, %16
  %18 = icmp slt i32 %10, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %9
  %20 = load %struct.sm_ftl*, %struct.sm_ftl** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @sm_read_sector(%struct.sm_ftl* %20, i32 0, i32 %21, i32 0, i32* null, %struct.sm_oob* %4)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %30

25:                                               ; preds = %19
  %26 = call i32 @sm_block_valid(%struct.sm_oob* %4)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  br label %30

29:                                               ; preds = %25
  store i32 1, i32* %7, align 4
  br label %33

30:                                               ; preds = %28, %24
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %9

33:                                               ; preds = %29, %9
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %118

39:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %58, %39
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.sm_ftl*, %struct.sm_ftl** %3, align 8
  %43 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %40
  %47 = load %struct.sm_ftl*, %struct.sm_ftl** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i64 @sm_read_sector(%struct.sm_ftl* %47, i32 0, i32 %48, i32 %49, i32* null, %struct.sm_oob* %4)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %58

53:                                               ; preds = %46
  %54 = call i32 @sm_sector_valid(%struct.sm_oob* %4)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  br label %58

57:                                               ; preds = %53
  br label %64

58:                                               ; preds = %56, %52
  %59 = load i64, i64* @SM_SECTOR_SIZE, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %6, align 4
  br label %40

64:                                               ; preds = %57, %40
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.sm_ftl*, %struct.sm_ftl** %3, align 8
  %67 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %65, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32, i32* @EIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %118

73:                                               ; preds = %64
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.sm_ftl*, %struct.sm_ftl** %3, align 8
  %76 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.sm_ftl*, %struct.sm_ftl** %3, align 8
  %79 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 8
  %80 = load %struct.sm_ftl*, %struct.sm_ftl** %3, align 8
  %81 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %80, i32 0, i32 5
  store i64 0, i64* %81, align 8
  %82 = load %struct.sm_ftl*, %struct.sm_ftl** %3, align 8
  %83 = call i32 @sm_read_cis(%struct.sm_ftl* %82)
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %98, label %89

89:                                               ; preds = %73
  %90 = load i64, i64* @SM_SMALL_PAGE, align 8
  %91 = load %struct.sm_ftl*, %struct.sm_ftl** %3, align 8
  %92 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %91, i32 0, i32 5
  store i64 %90, i64* %92, align 8
  %93 = load %struct.sm_ftl*, %struct.sm_ftl** %3, align 8
  %94 = call i32 @sm_read_cis(%struct.sm_ftl* %93)
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %89, %73
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %98
  %102 = load i32, i32* %5, align 4
  %103 = load %struct.sm_ftl*, %struct.sm_ftl** %3, align 8
  %104 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = mul nsw i32 %102, %105
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = load %struct.sm_ftl*, %struct.sm_ftl** %3, align 8
  %111 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %109, %112
  %114 = call i32 @dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %113)
  store i32 0, i32* %2, align 4
  br label %118

115:                                              ; preds = %98
  %116 = load i32, i32* @EIO, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %115, %101, %70, %36
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i64 @sm_read_sector(%struct.sm_ftl*, i32, i32, i32, i32*, %struct.sm_oob*) #1

declare dso_local i32 @sm_block_valid(%struct.sm_oob*) #1

declare dso_local i32 @sm_sector_valid(%struct.sm_oob*) #1

declare dso_local i32 @sm_read_cis(%struct.sm_ftl*) #1

declare dso_local i32 @dbg(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
