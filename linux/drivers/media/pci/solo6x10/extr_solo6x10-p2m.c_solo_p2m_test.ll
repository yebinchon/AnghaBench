; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-p2m.c_solo_p2m_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-p2m.c_solo_p2m_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i32 }

@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.solo_dev*, i32, i32)* @solo_p2m_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @solo_p2m_test(%struct.solo_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.solo_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.solo_dev* %0, %struct.solo_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @get_order(i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = load i32, i32* %12, align 4
  %19 = call i64 @__get_free_pages(i32 %17, i32 %18)
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %130

24:                                               ; preds = %3
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call i64 @__get_free_pages(i32 %25, i32 %26)
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %9, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load i32*, i32** %8, align 8
  %33 = ptrtoint i32* %32 to i64
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @free_pages(i64 %33, i32 %34)
  store i32 -1, i32* %4, align 4
  br label %130

36:                                               ; preds = %24
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %52, %36
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %7, align 4
  %40 = ashr i32 %39, 3
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %37
  %43 = load i32, i32* %10, align 4
  %44 = shl i32 %43, 16
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  %47 = or i32 %44, %46
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %47, i32* %51, align 4
  br label %52

52:                                               ; preds = %42
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %37

55:                                               ; preds = %37
  %56 = load i32, i32* %7, align 4
  %57 = ashr i32 %56, 3
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %74, %55
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %7, align 4
  %61 = ashr i32 %60, 2
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %58
  %64 = load i32, i32* %10, align 4
  %65 = shl i32 %64, 16
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  %68 = or i32 %65, %67
  %69 = xor i32 %68, -1
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %69, i32* %73, align 4
  br label %74

74:                                               ; preds = %63
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %58

77:                                               ; preds = %58
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @memset(i32* %78, i32 85, i32 %79)
  %81 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i64 @solo_p2m_dma(%struct.solo_dev* %81, i32 1, i32* %82, i32 %83, i32 %84, i32 0, i32 0)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  br label %120

88:                                               ; preds = %77
  %89 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i64 @solo_p2m_dma(%struct.solo_dev* %89, i32 0, i32* %90, i32 %91, i32 %92, i32 0, i32 0)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %120

96:                                               ; preds = %88
  store i32 0, i32* %10, align 4
  br label %97

97:                                               ; preds = %116, %96
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %7, align 4
  %100 = ashr i32 %99, 2
  %101 = icmp slt i32 %98, %100
  br i1 %101, label %102, label %119

102:                                              ; preds = %97
  %103 = load i32*, i32** %8, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %9, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %107, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %102
  br label %120

115:                                              ; preds = %102
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %10, align 4
  br label %97

119:                                              ; preds = %97
  store i32 0, i32* %11, align 4
  br label %120

120:                                              ; preds = %119, %114, %95, %87
  %121 = load i32*, i32** %8, align 8
  %122 = ptrtoint i32* %121 to i64
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @free_pages(i64 %122, i32 %123)
  %125 = load i32*, i32** %9, align 8
  %126 = ptrtoint i32* %125 to i64
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @free_pages(i64 %126, i32 %127)
  %129 = load i32, i32* %11, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %120, %31, %23
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @get_order(i32) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @solo_p2m_dma(%struct.solo_dev*, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
