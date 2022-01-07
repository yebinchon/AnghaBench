; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/altera-stapl/extr_altera-jtag.c_altera_set_dr_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/altera-stapl/extr_altera-jtag.c_altera_set_dr_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_jtag = type { i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @altera_set_dr_post(%struct.altera_jtag* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.altera_jtag*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.altera_jtag* %0, %struct.altera_jtag** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.altera_jtag*, %struct.altera_jtag** %5, align 8
  %14 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sgt i32 %12, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %4
  %18 = load %struct.altera_jtag*, %struct.altera_jtag** %5, align 8
  %19 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @kfree(i32* %20)
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 7
  %24 = ashr i32 %23, 3
  %25 = call i64 @alt_malloc(i32 %24)
  %26 = inttoptr i64 %25 to i32*
  %27 = load %struct.altera_jtag*, %struct.altera_jtag** %5, align 8
  %28 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %27, i32 0, i32 1
  store i32* %26, i32** %28, align 8
  %29 = load %struct.altera_jtag*, %struct.altera_jtag** %5, align 8
  %30 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %17
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %9, align 4
  br label %40

36:                                               ; preds = %17
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.altera_jtag*, %struct.altera_jtag** %5, align 8
  %39 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %36, %33
  br label %45

41:                                               ; preds = %4
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.altera_jtag*, %struct.altera_jtag** %5, align 8
  %44 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %41, %40
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %117

48:                                               ; preds = %45
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %113, %48
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %116

53:                                               ; preds = %49
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %54, %55
  store i32 %56, i32* %11, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %72

59:                                               ; preds = %53
  %60 = load i32, i32* %10, align 4
  %61 = and i32 %60, 7
  %62 = shl i32 1, %61
  %63 = load %struct.altera_jtag*, %struct.altera_jtag** %5, align 8
  %64 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = ashr i32 %66, 3
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %62
  store i32 %71, i32* %69, align 4
  br label %112

72:                                               ; preds = %53
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* %11, align 4
  %75 = ashr i32 %74, 3
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %11, align 4
  %80 = and i32 %79, 7
  %81 = shl i32 1, %80
  %82 = and i32 %78, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %72
  %85 = load i32, i32* %10, align 4
  %86 = and i32 %85, 7
  %87 = shl i32 1, %86
  %88 = load %struct.altera_jtag*, %struct.altera_jtag** %5, align 8
  %89 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = ashr i32 %91, 3
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %87
  store i32 %96, i32* %94, align 4
  br label %111

97:                                               ; preds = %72
  %98 = load i32, i32* %10, align 4
  %99 = and i32 %98, 7
  %100 = shl i32 1, %99
  %101 = xor i32 %100, -1
  %102 = load %struct.altera_jtag*, %struct.altera_jtag** %5, align 8
  %103 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = ashr i32 %105, 3
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, %101
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %97, %84
  br label %112

112:                                              ; preds = %111, %59
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %10, align 4
  br label %49

116:                                              ; preds = %49
  br label %117

117:                                              ; preds = %116, %45
  %118 = load i32, i32* %9, align 4
  ret i32 %118
}

declare dso_local i32 @kfree(i32*) #1

declare dso_local i64 @alt_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
