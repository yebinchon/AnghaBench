; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_t3_hw.c_t3_mc7_bd_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_t3_hw.c_t3_mc7_bd_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mc7 = type { i32, i32, i64, %struct.adapter* }
%struct.adapter = type { i32 }

@t3_mc7_bd_read.shift = internal constant [4 x i32] [i32 0, i32 0, i32 16, i32 24], align 16
@t3_mc7_bd_read.step = internal constant [4 x i32] [i32 0, i32 32, i32 16, i32 8], align 16
@EINVAL = common dso_local global i32 0, align 4
@A_MC7_BD_ADDR = common dso_local global i64 0, align 8
@A_MC7_BD_OP = common dso_local global i64 0, align 8
@F_BUSY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@A_MC7_BD_DATA1 = common dso_local global i64 0, align 8
@A_MC7_BD_DATA0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_mc7_bd_read(%struct.mc7* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mc7*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.adapter*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mc7* %0, %struct.mc7** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load %struct.mc7*, %struct.mc7** %6, align 8
  %17 = getelementptr inbounds %struct.mc7, %struct.mc7* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sdiv i32 %18, 8
  store i32 %19, i32* %10, align 4
  %20 = load %struct.mc7*, %struct.mc7** %6, align 8
  %21 = getelementptr inbounds %struct.mc7, %struct.mc7* %20, i32 0, i32 3
  %22 = load %struct.adapter*, %struct.adapter** %21, align 8
  store %struct.adapter* %22, %struct.adapter** %11, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp uge i32 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = add i32 %27, %28
  %30 = load i32, i32* %10, align 4
  %31 = icmp ugt i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26, %4
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %167

35:                                               ; preds = %26
  %36 = load %struct.mc7*, %struct.mc7** %6, align 8
  %37 = getelementptr inbounds %struct.mc7, %struct.mc7* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 8, %38
  %40 = load i32, i32* %7, align 4
  %41 = mul i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %162, %35
  %43 = load i32, i32* %8, align 4
  %44 = add i32 %43, -1
  store i32 %44, i32* %8, align 4
  %45 = icmp ne i32 %43, 0
  br i1 %45, label %46, label %166

46:                                               ; preds = %42
  store i32 0, i32* %13, align 4
  %47 = load %struct.mc7*, %struct.mc7** %6, align 8
  %48 = getelementptr inbounds %struct.mc7, %struct.mc7* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 1, %49
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %159, %46
  %53 = load i32, i32* %12, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %162

55:                                               ; preds = %52
  store i32 10, i32* %14, align 4
  %56 = load %struct.adapter*, %struct.adapter** %11, align 8
  %57 = load %struct.mc7*, %struct.mc7** %6, align 8
  %58 = getelementptr inbounds %struct.mc7, %struct.mc7* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @A_MC7_BD_ADDR, align 8
  %61 = add nsw i64 %59, %60
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @t3_write_reg(%struct.adapter* %56, i64 %61, i32 %62)
  %64 = load %struct.adapter*, %struct.adapter** %11, align 8
  %65 = load %struct.mc7*, %struct.mc7** %6, align 8
  %66 = getelementptr inbounds %struct.mc7, %struct.mc7* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @A_MC7_BD_OP, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @t3_write_reg(%struct.adapter* %64, i64 %69, i32 0)
  %71 = load %struct.adapter*, %struct.adapter** %11, align 8
  %72 = load %struct.mc7*, %struct.mc7** %6, align 8
  %73 = getelementptr inbounds %struct.mc7, %struct.mc7* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @A_MC7_BD_OP, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @t3_read_reg(%struct.adapter* %71, i64 %76)
  store i32 %77, i32* %15, align 4
  br label %78

78:                                               ; preds = %89, %55
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* @F_BUSY, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %14, align 4
  %86 = icmp ne i32 %84, 0
  br label %87

87:                                               ; preds = %83, %78
  %88 = phi i1 [ false, %78 ], [ %86, %83 ]
  br i1 %88, label %89, label %97

89:                                               ; preds = %87
  %90 = load %struct.adapter*, %struct.adapter** %11, align 8
  %91 = load %struct.mc7*, %struct.mc7** %6, align 8
  %92 = getelementptr inbounds %struct.mc7, %struct.mc7* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @A_MC7_BD_OP, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @t3_read_reg(%struct.adapter* %90, i64 %95)
  store i32 %96, i32* %15, align 4
  br label %78

97:                                               ; preds = %87
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* @F_BUSY, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i32, i32* @EIO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %5, align 4
  br label %167

105:                                              ; preds = %97
  %106 = load %struct.adapter*, %struct.adapter** %11, align 8
  %107 = load %struct.mc7*, %struct.mc7** %6, align 8
  %108 = getelementptr inbounds %struct.mc7, %struct.mc7* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @A_MC7_BD_DATA1, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @t3_read_reg(%struct.adapter* %106, i64 %111)
  store i32 %112, i32* %15, align 4
  %113 = load %struct.mc7*, %struct.mc7** %6, align 8
  %114 = getelementptr inbounds %struct.mc7, %struct.mc7* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %105
  %118 = load %struct.adapter*, %struct.adapter** %11, align 8
  %119 = load %struct.mc7*, %struct.mc7** %6, align 8
  %120 = getelementptr inbounds %struct.mc7, %struct.mc7* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @A_MC7_BD_DATA0, align 8
  %123 = add nsw i64 %121, %122
  %124 = call i32 @t3_read_reg(%struct.adapter* %118, i64 %123)
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %15, align 4
  %126 = shl i32 %125, 32
  %127 = load i32, i32* %13, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %13, align 4
  br label %156

129:                                              ; preds = %105
  %130 = load %struct.mc7*, %struct.mc7** %6, align 8
  %131 = getelementptr inbounds %struct.mc7, %struct.mc7* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp sgt i32 %132, 1
  br i1 %133, label %134, label %143

134:                                              ; preds = %129
  %135 = load %struct.mc7*, %struct.mc7** %6, align 8
  %136 = getelementptr inbounds %struct.mc7, %struct.mc7* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [4 x i32], [4 x i32]* @t3_mc7_bd_read.shift, i64 0, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %15, align 4
  %142 = ashr i32 %141, %140
  store i32 %142, i32* %15, align 4
  br label %143

143:                                              ; preds = %134, %129
  %144 = load i32, i32* %15, align 4
  %145 = load %struct.mc7*, %struct.mc7** %6, align 8
  %146 = getelementptr inbounds %struct.mc7, %struct.mc7* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [4 x i32], [4 x i32]* @t3_mc7_bd_read.step, i64 0, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %12, align 4
  %152 = mul nsw i32 %150, %151
  %153 = shl i32 %144, %152
  %154 = load i32, i32* %13, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %13, align 4
  br label %156

156:                                              ; preds = %143, %117
  %157 = load i32, i32* %7, align 4
  %158 = add i32 %157, 8
  store i32 %158, i32* %7, align 4
  br label %159

159:                                              ; preds = %156
  %160 = load i32, i32* %12, align 4
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* %12, align 4
  br label %52

162:                                              ; preds = %52
  %163 = load i32, i32* %13, align 4
  %164 = load i32*, i32** %9, align 8
  %165 = getelementptr inbounds i32, i32* %164, i32 1
  store i32* %165, i32** %9, align 8
  store i32 %163, i32* %164, align 4
  br label %42

166:                                              ; preds = %42
  store i32 0, i32* %5, align 4
  br label %167

167:                                              ; preds = %166, %102, %32
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

declare dso_local i32 @t3_write_reg(%struct.adapter*, i64, i32) #1

declare dso_local i32 @t3_read_reg(%struct.adapter*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
