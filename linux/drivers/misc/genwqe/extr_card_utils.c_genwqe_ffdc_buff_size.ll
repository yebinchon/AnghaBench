; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_utils.c_genwqe_ffdc_buff_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_utils.c_genwqe_ffdc_buff_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genwqe_dev = type { i32 }

@IO_EXTENDED_ERROR_POINTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genwqe_ffdc_buff_size(%struct.genwqe_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.genwqe_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.genwqe_dev* %0, %struct.genwqe_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @GENWQE_UID_OFFS(i32 %17)
  %19 = load i32, i32* @IO_EXTENDED_ERROR_POINTER, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load %struct.genwqe_dev*, %struct.genwqe_dev** %3, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @__genwqe_readq(%struct.genwqe_dev* %21, i32 %22)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %72

26:                                               ; preds = %2
  %27 = load i32, i32* %14, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ne i64 %28, -1
  br i1 %29, label %30, label %72

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @GENWQE_UID_OFFS(i32 %31)
  %33 = load i32, i32* %14, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %11, align 4
  br label %35

35:                                               ; preds = %30, %68
  %36 = load %struct.genwqe_dev*, %struct.genwqe_dev** %3, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @__genwqe_readq(%struct.genwqe_dev* %36, i32 %37)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp eq i64 %43, -1
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %35
  br label %71

46:                                               ; preds = %41
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = and i64 %48, 549739036672
  %50 = lshr i64 %49, 24
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %15, align 4
  %53 = sext i32 %52 to i64
  %54 = and i64 %53, 549755813888
  %55 = lshr i64 %54, 36
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %46
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %5, align 4
  br label %68

63:                                               ; preds = %46
  %64 = load i32, i32* %12, align 4
  %65 = ashr i32 %64, 3
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %63, %59
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 8
  store i32 %70, i32* %11, align 4
  br label %35

71:                                               ; preds = %45
  br label %72

72:                                               ; preds = %71, %26, %2
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %109, %72
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, 8
  br i1 %75, label %76, label %112

76:                                               ; preds = %73
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @GENWQE_UID_OFFS(i32 %77)
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @IO_EXTENDED_DIAG_MAP(i32 %79)
  %81 = or i32 %78, %80
  store i32 %81, i32* %16, align 4
  %82 = load %struct.genwqe_dev*, %struct.genwqe_dev** %3, align 8
  %83 = load i32, i32* %16, align 4
  %84 = call i32 @__genwqe_readq(%struct.genwqe_dev* %82, i32 %83)
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %15, align 4
  %86 = sext i32 %85 to i64
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %76
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = icmp eq i64 %90, -1
  br i1 %91, label %92, label %93

92:                                               ; preds = %88, %76
  br label %109

93:                                               ; preds = %88
  %94 = load i32, i32* %15, align 4
  %95 = ashr i32 %94, 24
  %96 = and i32 %95, 255
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %15, align 4
  %98 = ashr i32 %97, 16
  %99 = and i32 %98, 255
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %15, align 4
  %101 = and i32 %100, 65535
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %9, align 4
  %105 = mul nsw i32 %103, %104
  %106 = add nsw i32 %102, %105
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %93, %92
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %6, align 4
  br label %73

112:                                              ; preds = %73
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @GENWQE_UID_OFFS(i32) #1

declare dso_local i32 @__genwqe_readq(%struct.genwqe_dev*, i32) #1

declare dso_local i32 @IO_EXTENDED_DIAG_MAP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
