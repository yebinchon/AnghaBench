; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/altera-stapl/extr_altera-jtag.c_altera_set_ir_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/altera-stapl/extr_altera-jtag.c_altera_set_ir_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_jtag = type { i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @altera_set_ir_post(%struct.altera_jtag* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.altera_jtag*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.altera_jtag* %0, %struct.altera_jtag** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.altera_jtag*, %struct.altera_jtag** %6, align 8
  %15 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sgt i32 %13, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %4
  %19 = load %struct.altera_jtag*, %struct.altera_jtag** %6, align 8
  %20 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @kfree(i32* %21)
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 7
  %25 = ashr i32 %24, 3
  %26 = call i64 @alt_malloc(i32 %25)
  %27 = inttoptr i64 %26 to i32*
  %28 = load %struct.altera_jtag*, %struct.altera_jtag** %6, align 8
  %29 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %28, i32 0, i32 1
  store i32* %27, i32** %29, align 8
  %30 = load %struct.altera_jtag*, %struct.altera_jtag** %6, align 8
  %31 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %18
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %10, align 4
  br label %41

37:                                               ; preds = %18
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.altera_jtag*, %struct.altera_jtag** %6, align 8
  %40 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %37, %34
  br label %46

42:                                               ; preds = %4
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.altera_jtag*, %struct.altera_jtag** %6, align 8
  %45 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %42, %41
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %5, align 4
  br label %121

51:                                               ; preds = %46
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %116, %51
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %119

56:                                               ; preds = %52
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %57, %58
  store i32 %59, i32* %12, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %75

62:                                               ; preds = %56
  %63 = load i32, i32* %11, align 4
  %64 = and i32 %63, 7
  %65 = shl i32 1, %64
  %66 = load %struct.altera_jtag*, %struct.altera_jtag** %6, align 8
  %67 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = ashr i32 %69, 3
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %65
  store i32 %74, i32* %72, align 4
  br label %115

75:                                               ; preds = %56
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* %12, align 4
  %78 = ashr i32 %77, 3
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %12, align 4
  %83 = and i32 %82, 7
  %84 = shl i32 1, %83
  %85 = and i32 %81, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %75
  %88 = load i32, i32* %11, align 4
  %89 = and i32 %88, 7
  %90 = shl i32 1, %89
  %91 = load %struct.altera_jtag*, %struct.altera_jtag** %6, align 8
  %92 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %11, align 4
  %95 = ashr i32 %94, 3
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %90
  store i32 %99, i32* %97, align 4
  br label %114

100:                                              ; preds = %75
  %101 = load i32, i32* %11, align 4
  %102 = and i32 %101, 7
  %103 = shl i32 1, %102
  %104 = xor i32 %103, -1
  %105 = load %struct.altera_jtag*, %struct.altera_jtag** %6, align 8
  %106 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %11, align 4
  %109 = ashr i32 %108, 3
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, %104
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %100, %87
  br label %115

115:                                              ; preds = %114, %62
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  br label %52

119:                                              ; preds = %52
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %119, %49
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i32 @kfree(i32*) #1

declare dso_local i64 @alt_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
