; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_init_ops.h_bnx2x_init_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_init_ops.h_bnx2x_init_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%union.init_op = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@STAGE_START = common dso_local global i32 0, align 4
@STAGE_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i64, i64)* @bnx2x_init_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_init_block(%struct.bnx2x* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %union.init_op*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %16 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %17 = call i64* @INIT_OPS_OFFSETS(%struct.bnx2x* %16)
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i32, i32* @STAGE_START, align 4
  %21 = call i64 @BLOCK_OPS_IDX(i64 %18, i64 %19, i32 %20)
  %22 = getelementptr inbounds i64, i64* %17, i64 %21
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  %24 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %25 = call i64* @INIT_OPS_OFFSETS(%struct.bnx2x* %24)
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i32, i32* @STAGE_END, align 4
  %29 = call i64 @BLOCK_OPS_IDX(i64 %26, i64 %27, i32 %28)
  %30 = getelementptr inbounds i64, i64* %25, i64 %29
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %3
  br label %168

36:                                               ; preds = %3
  %37 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %38 = call i64* @INIT_DATA(%struct.bnx2x* %37)
  store i64* %38, i64** %15, align 8
  %39 = load i64, i64* %7, align 8
  store i64 %39, i64* %10, align 8
  br label %40

40:                                               ; preds = %165, %36
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* %8, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %168

44:                                               ; preds = %40
  %45 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %46 = call i32* @INIT_OPS(%struct.bnx2x* %45)
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = bitcast i32* %48 to %union.init_op*
  store %union.init_op* %49, %union.init_op** %9, align 8
  %50 = load %union.init_op*, %union.init_op** %9, align 8
  %51 = bitcast %union.init_op* %50 to %struct.TYPE_6__*
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %11, align 8
  %54 = load %union.init_op*, %union.init_op** %9, align 8
  %55 = bitcast %union.init_op* %54 to %struct.TYPE_6__*
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %12, align 8
  %58 = load %union.init_op*, %union.init_op** %9, align 8
  %59 = bitcast %union.init_op* %58 to %struct.TYPE_9__*
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %13, align 8
  %62 = load i64*, i64** %15, align 8
  %63 = load %union.init_op*, %union.init_op** %9, align 8
  %64 = bitcast %union.init_op* %63 to %struct.TYPE_9__*
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %62, i64 %67
  store i64* %68, i64** %14, align 8
  %69 = load i64, i64* %11, align 8
  switch i64 %69, label %163 [
    i64 135, label %70
    i64 131, label %74
    i64 134, label %82
    i64 133, label %88
    i64 128, label %94
    i64 132, label %102
    i64 129, label %110
    i64 130, label %119
    i64 137, label %125
    i64 136, label %146
  ]

70:                                               ; preds = %44
  %71 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %72 = load i64, i64* %12, align 8
  %73 = call i32 @REG_RD(%struct.bnx2x* %71, i64 %72)
  br label %164

74:                                               ; preds = %44
  %75 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %76 = load i64, i64* %12, align 8
  %77 = load %union.init_op*, %union.init_op** %9, align 8
  %78 = bitcast %union.init_op* %77 to %struct.TYPE_7__*
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @REG_WR(%struct.bnx2x* %75, i64 %76, i32 %80)
  br label %164

82:                                               ; preds = %44
  %83 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %84 = load i64, i64* %12, align 8
  %85 = load i64*, i64** %14, align 8
  %86 = load i64, i64* %13, align 8
  %87 = call i32 @bnx2x_init_str_wr(%struct.bnx2x* %83, i64 %84, i64* %85, i64 %86)
  br label %164

88:                                               ; preds = %44
  %89 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %90 = load i64, i64* %12, align 8
  %91 = load i64*, i64** %14, align 8
  %92 = load i64, i64* %13, align 8
  %93 = call i32 @bnx2x_init_wr_wb(%struct.bnx2x* %89, i64 %90, i64* %91, i64 %92)
  br label %164

94:                                               ; preds = %44
  %95 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %96 = load i64, i64* %12, align 8
  %97 = load %union.init_op*, %union.init_op** %9, align 8
  %98 = bitcast %union.init_op* %97 to %struct.TYPE_8__*
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @bnx2x_init_fill(%struct.bnx2x* %95, i64 %96, i32 0, i32 %100, i32 0)
  br label %164

102:                                              ; preds = %44
  %103 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %104 = load i64, i64* %12, align 8
  %105 = load %union.init_op*, %union.init_op** %9, align 8
  %106 = bitcast %union.init_op* %105 to %struct.TYPE_8__*
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @bnx2x_init_fill(%struct.bnx2x* %103, i64 %104, i32 0, i32 %108, i32 1)
  br label %164

110:                                              ; preds = %44
  %111 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %112 = load i64, i64* %12, align 8
  %113 = load i64, i64* %13, align 8
  %114 = load %union.init_op*, %union.init_op** %9, align 8
  %115 = bitcast %union.init_op* %114 to %struct.TYPE_9__*
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @bnx2x_init_wr_zp(%struct.bnx2x* %111, i64 %112, i64 %113, i32 %117)
  br label %164

119:                                              ; preds = %44
  %120 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %121 = load i64, i64* %12, align 8
  %122 = load i64*, i64** %14, align 8
  %123 = load i64, i64* %13, align 8
  %124 = call i32 @bnx2x_init_wr_64(%struct.bnx2x* %120, i64 %121, i64* %122, i64 %123)
  br label %164

125:                                              ; preds = %44
  %126 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %127 = call i32 @INIT_MODE_FLAGS(%struct.bnx2x* %126)
  %128 = load %union.init_op*, %union.init_op** %9, align 8
  %129 = bitcast %union.init_op* %128 to %struct.TYPE_10__*
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = and i32 %127, %131
  %133 = load %union.init_op*, %union.init_op** %9, align 8
  %134 = bitcast %union.init_op* %133 to %struct.TYPE_10__*
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %132, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %125
  %139 = load %union.init_op*, %union.init_op** %9, align 8
  %140 = bitcast %union.init_op* %139 to %struct.TYPE_10__*
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %10, align 8
  %144 = add nsw i64 %143, %142
  store i64 %144, i64* %10, align 8
  br label %145

145:                                              ; preds = %138, %125
  br label %164

146:                                              ; preds = %44
  %147 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %148 = call i32 @INIT_MODE_FLAGS(%struct.bnx2x* %147)
  %149 = load %union.init_op*, %union.init_op** %9, align 8
  %150 = bitcast %union.init_op* %149 to %struct.TYPE_10__*
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = and i32 %148, %152
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %146
  %156 = load %union.init_op*, %union.init_op** %9, align 8
  %157 = bitcast %union.init_op* %156 to %struct.TYPE_10__*
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* %10, align 8
  %161 = add nsw i64 %160, %159
  store i64 %161, i64* %10, align 8
  br label %162

162:                                              ; preds = %155, %146
  br label %164

163:                                              ; preds = %44
  br label %164

164:                                              ; preds = %163, %162, %145, %119, %110, %102, %94, %88, %82, %74, %70
  br label %165

165:                                              ; preds = %164
  %166 = load i64, i64* %10, align 8
  %167 = add nsw i64 %166, 1
  store i64 %167, i64* %10, align 8
  br label %40

168:                                              ; preds = %35, %40
  ret void
}

declare dso_local i64* @INIT_OPS_OFFSETS(%struct.bnx2x*) #1

declare dso_local i64 @BLOCK_OPS_IDX(i64, i64, i32) #1

declare dso_local i64* @INIT_DATA(%struct.bnx2x*) #1

declare dso_local i32* @INIT_OPS(%struct.bnx2x*) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i64) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @bnx2x_init_str_wr(%struct.bnx2x*, i64, i64*, i64) #1

declare dso_local i32 @bnx2x_init_wr_wb(%struct.bnx2x*, i64, i64*, i64) #1

declare dso_local i32 @bnx2x_init_fill(%struct.bnx2x*, i64, i32, i32, i32) #1

declare dso_local i32 @bnx2x_init_wr_zp(%struct.bnx2x*, i64, i64, i32) #1

declare dso_local i32 @bnx2x_init_wr_64(%struct.bnx2x*, i64, i64*, i64) #1

declare dso_local i32 @INIT_MODE_FLAGS(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
