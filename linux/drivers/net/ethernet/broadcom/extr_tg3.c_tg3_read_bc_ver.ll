; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_read_bc_ver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_read_bc_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32* }

@TG3_VER_SIZE = common dso_local global i32 0, align 4
@TG3_NVM_PTREV_BCVER = common dso_local global i32 0, align 4
@TG3_NVM_BCVER_MAJMSK = common dso_local global i32 0, align 4
@TG3_NVM_BCVER_MAJSFT = common dso_local global i32 0, align 4
@TG3_NVM_BCVER_MINMSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"v%d.%02d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_read_bc_ver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_read_bc_ver(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.tg3*, %struct.tg3** %2, align 8
  %14 = call i64 @tg3_nvram_read(%struct.tg3* %13, i32 12, i32* %4)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load %struct.tg3*, %struct.tg3** %2, align 8
  %18 = call i64 @tg3_nvram_read(%struct.tg3* %17, i32 4, i32* %5)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %1
  br label %124

21:                                               ; preds = %16
  %22 = load %struct.tg3*, %struct.tg3** %2, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @tg3_nvram_logical_addr(%struct.tg3* %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load %struct.tg3*, %struct.tg3** %2, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @tg3_nvram_read(%struct.tg3* %25, i32 %26, i32* %3)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %124

30:                                               ; preds = %21
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, -67108864
  %33 = icmp eq i32 %32, 201326592
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load %struct.tg3*, %struct.tg3** %2, align 8
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 4
  %38 = call i64 @tg3_nvram_read(%struct.tg3* %35, i32 %37, i32* %3)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %124

41:                                               ; preds = %34
  %42 = load i32, i32* %3, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 1, i32* %9, align 4
  br label %45

45:                                               ; preds = %44, %41
  br label %46

46:                                               ; preds = %45, %30
  %47 = load %struct.tg3*, %struct.tg3** %2, align 8
  %48 = getelementptr inbounds %struct.tg3, %struct.tg3* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @strlen(i32* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %97

53:                                               ; preds = %46
  %54 = load i32, i32* @TG3_VER_SIZE, align 4
  %55 = load i32, i32* %8, align 4
  %56 = sub nsw i32 %54, %55
  %57 = icmp slt i32 %56, 16
  br i1 %57, label %64, label %58

58:                                               ; preds = %53
  %59 = load %struct.tg3*, %struct.tg3** %2, align 8
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 8
  %62 = call i64 @tg3_nvram_read(%struct.tg3* %59, i32 %61, i32* %6)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58, %53
  br label %124

65:                                               ; preds = %58
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %66, %67
  %69 = load i32, i32* %5, align 4
  %70 = sub nsw i32 %68, %69
  store i32 %70, i32* %4, align 4
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %93, %65
  %72 = load i32, i32* %7, align 4
  %73 = icmp slt i32 %72, 16
  br i1 %73, label %74, label %96

74:                                               ; preds = %71
  %75 = load %struct.tg3*, %struct.tg3** %2, align 8
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %76, %77
  %79 = call i64 @tg3_nvram_read_be32(%struct.tg3* %75, i32 %78, i32* %10)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %124

82:                                               ; preds = %74
  %83 = load %struct.tg3*, %struct.tg3** %2, align 8
  %84 = getelementptr inbounds %struct.tg3, %struct.tg3* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = call i32 @memcpy(i32* %91, i32* %10, i32 4)
  br label %93

93:                                               ; preds = %82
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 4
  store i32 %95, i32* %7, align 4
  br label %71

96:                                               ; preds = %71
  br label %124

97:                                               ; preds = %46
  %98 = load %struct.tg3*, %struct.tg3** %2, align 8
  %99 = load i32, i32* @TG3_NVM_PTREV_BCVER, align 4
  %100 = call i64 @tg3_nvram_read(%struct.tg3* %98, i32 %99, i32* %6)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %124

103:                                              ; preds = %97
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @TG3_NVM_BCVER_MAJMSK, align 4
  %106 = and i32 %104, %105
  %107 = load i32, i32* @TG3_NVM_BCVER_MAJSFT, align 4
  %108 = ashr i32 %106, %107
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @TG3_NVM_BCVER_MINMSK, align 4
  %111 = and i32 %109, %110
  store i32 %111, i32* %12, align 4
  %112 = load %struct.tg3*, %struct.tg3** %2, align 8
  %113 = getelementptr inbounds %struct.tg3, %struct.tg3* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* @TG3_VER_SIZE, align 4
  %119 = load i32, i32* %8, align 4
  %120 = sub nsw i32 %118, %119
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %12, align 4
  %123 = call i32 @snprintf(i32* %117, i32 %120, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %20, %29, %40, %64, %81, %102, %103, %96
  ret void
}

declare dso_local i64 @tg3_nvram_read(%struct.tg3*, i32, i32*) #1

declare dso_local i32 @tg3_nvram_logical_addr(%struct.tg3*, i32) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i64 @tg3_nvram_read_be32(%struct.tg3*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @snprintf(i32*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
