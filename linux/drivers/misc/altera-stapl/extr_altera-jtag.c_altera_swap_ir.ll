; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/altera-stapl/extr_altera-jtag.c_altera_swap_ir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/altera-stapl/extr_altera-jtag.c_altera_swap_ir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_state = type { %struct.altera_jtag }
%struct.altera_jtag = type { i32, i32, i32, i32, i32, i32*, i32, i32 }

@EREMOTEIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @altera_swap_ir(%struct.altera_state* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.altera_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.altera_jtag*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.altera_state* %0, %struct.altera_state** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %19 = load %struct.altera_state*, %struct.altera_state** %7, align 8
  %20 = getelementptr inbounds %struct.altera_state, %struct.altera_state* %19, i32 0, i32 0
  store %struct.altera_jtag* %20, %struct.altera_jtag** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %21 = load %struct.altera_jtag*, %struct.altera_jtag** %13, align 8
  %22 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %23, %24
  %26 = load %struct.altera_jtag*, %struct.altera_jtag** %13, align 8
  %27 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %25, %28
  store i32 %29, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 136, i32* %18, align 4
  %30 = load %struct.altera_jtag*, %struct.altera_jtag** %13, align 8
  %31 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %36 [
    i32 136, label %33
    i32 128, label %33
    i32 137, label %33
    i32 140, label %34
    i32 144, label %34
    i32 139, label %34
    i32 143, label %34
    i32 141, label %34
    i32 142, label %34
    i32 138, label %34
    i32 131, label %35
    i32 135, label %35
    i32 130, label %35
    i32 134, label %35
    i32 132, label %35
    i32 133, label %35
    i32 129, label %35
  ]

33:                                               ; preds = %6, %6, %6
  store i32 0, i32* %14, align 4
  store i32 137, i32* %18, align 4
  br label %39

34:                                               ; preds = %6, %6, %6, %6, %6, %6, %6
  store i32 1, i32* %14, align 4
  store i32 141, i32* %18, align 4
  br label %39

35:                                               ; preds = %6, %6, %6, %6, %6, %6, %6
  store i32 2, i32* %14, align 4
  store i32 132, i32* %18, align 4
  br label %39

36:                                               ; preds = %6
  %37 = load i32, i32* @EREMOTEIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %17, align 4
  br label %39

39:                                               ; preds = %36, %35, %34, %33
  %40 = load i32, i32* %17, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = load %struct.altera_jtag*, %struct.altera_jtag** %13, align 8
  %44 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %18, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.altera_state*, %struct.altera_state** %7, align 8
  %50 = load i32, i32* %18, align 4
  %51 = call i32 @altera_goto_jstate(%struct.altera_state* %49, i32 %50)
  store i32 %51, i32* %17, align 4
  br label %52

52:                                               ; preds = %48, %42
  br label %53

53:                                               ; preds = %52, %39
  %54 = load i32, i32* %17, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %89

56:                                               ; preds = %53
  %57 = load i32, i32* %16, align 4
  %58 = load %struct.altera_jtag*, %struct.altera_jtag** %13, align 8
  %59 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %57, %60
  br i1 %61, label %62, label %88

62:                                               ; preds = %56
  %63 = load i32, i32* %16, align 4
  %64 = add nsw i32 %63, 7
  %65 = ashr i32 %64, 3
  store i32 %65, i32* %15, align 4
  %66 = load %struct.altera_jtag*, %struct.altera_jtag** %13, align 8
  %67 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %66, i32 0, i32 5
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @kfree(i32* %68)
  %70 = load i32, i32* %15, align 4
  %71 = call i64 @alt_malloc(i32 %70)
  %72 = inttoptr i64 %71 to i32*
  %73 = load %struct.altera_jtag*, %struct.altera_jtag** %13, align 8
  %74 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %73, i32 0, i32 5
  store i32* %72, i32** %74, align 8
  %75 = load %struct.altera_jtag*, %struct.altera_jtag** %13, align 8
  %76 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %75, i32 0, i32 5
  %77 = load i32*, i32** %76, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %62
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %17, align 4
  br label %87

82:                                               ; preds = %62
  %83 = load i32, i32* %15, align 4
  %84 = mul nsw i32 %83, 8
  %85 = load %struct.altera_jtag*, %struct.altera_jtag** %13, align 8
  %86 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %82, %79
  br label %88

88:                                               ; preds = %87, %56
  br label %89

89:                                               ; preds = %88, %53
  %90 = load i32, i32* %17, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %124

92:                                               ; preds = %89
  %93 = load %struct.altera_jtag*, %struct.altera_jtag** %13, align 8
  %94 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %93, i32 0, i32 5
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.altera_jtag*, %struct.altera_jtag** %13, align 8
  %97 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.altera_jtag*, %struct.altera_jtag** %13, align 8
  %100 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32*, i32** %9, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.altera_jtag*, %struct.altera_jtag** %13, align 8
  %106 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.altera_jtag*, %struct.altera_jtag** %13, align 8
  %109 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @altera_concatenate_data(i32* %95, i32 %98, i32 %101, i32* %102, i32 %103, i32 %104, i32 %107, i32 %110)
  %112 = load %struct.altera_state*, %struct.altera_state** %7, align 8
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %16, align 4
  %115 = load %struct.altera_jtag*, %struct.altera_jtag** %13, align 8
  %116 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %115, i32 0, i32 5
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.altera_jtag*, %struct.altera_jtag** %13, align 8
  %119 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %118, i32 0, i32 5
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @alt_jtag_irscan(%struct.altera_state* %112, i32 %113, i32 %114, i32* %117, i32* %120)
  %122 = load %struct.altera_jtag*, %struct.altera_jtag** %13, align 8
  %123 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %122, i32 0, i32 2
  store i32 132, i32* %123, align 8
  br label %124

124:                                              ; preds = %92, %89
  %125 = load i32, i32* %17, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %139

127:                                              ; preds = %124
  %128 = load %struct.altera_jtag*, %struct.altera_jtag** %13, align 8
  %129 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 132
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load %struct.altera_state*, %struct.altera_state** %7, align 8
  %134 = load %struct.altera_jtag*, %struct.altera_jtag** %13, align 8
  %135 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @altera_goto_jstate(%struct.altera_state* %133, i32 %136)
  store i32 %137, i32* %17, align 4
  br label %138

138:                                              ; preds = %132, %127
  br label %139

139:                                              ; preds = %138, %124
  %140 = load i32, i32* %17, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %153

142:                                              ; preds = %139
  %143 = load %struct.altera_jtag*, %struct.altera_jtag** %13, align 8
  %144 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %143, i32 0, i32 5
  %145 = load i32*, i32** %144, align 8
  %146 = load i32*, i32** %11, align 8
  %147 = load i32, i32* %12, align 4
  %148 = load %struct.altera_jtag*, %struct.altera_jtag** %13, align 8
  %149 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %8, align 4
  %152 = call i32 @altera_extract_target_data(i32* %145, i32* %146, i32 %147, i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %142, %139
  %154 = load i32, i32* %17, align 4
  ret i32 %154
}

declare dso_local i32 @altera_goto_jstate(%struct.altera_state*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i64 @alt_malloc(i32) #1

declare dso_local i32 @altera_concatenate_data(i32*, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @alt_jtag_irscan(%struct.altera_state*, i32, i32, i32*, i32*) #1

declare dso_local i32 @altera_extract_target_data(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
