; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_divide_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_divide_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu_parent = type { i32, i32*, i32*, i32, i32 }

@NIU_NUM_RXCHAN = common dso_local global i32 0, align 4
@NIU_NUM_TXCHAN = common dso_local global i32 0, align 4
@PORT_TYPE_10G = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"niu%d: Port %u [%u RX chans] [%u TX chans]\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"niu%d: Too many RX channels (%d), resetting to one per port\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"niu%d: Too many TX channels (%d), resetting to one per port\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"niu%d: Driver bug, wasted channels, RX[%d] TX[%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu_parent*, i32, i32)* @niu_divide_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_divide_channels(%struct.niu_parent* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.niu_parent*, align 8
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
  store %struct.niu_parent* %0, %struct.niu_parent** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %17 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %21, %3
  %25 = load i32, i32* @NIU_NUM_RXCHAN, align 4
  %26 = load i32, i32* %7, align 4
  %27 = sdiv i32 %25, %26
  store i32 %27, i32* %9, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* @NIU_NUM_TXCHAN, align 4
  %29 = load i32, i32* %7, align 4
  %30 = sdiv i32 %28, %29
  store i32 %30, i32* %11, align 4
  store i32 %30, i32* %10, align 4
  br label %50

31:                                               ; preds = %21
  %32 = load i32, i32* @NIU_NUM_RXCHAN, align 4
  %33 = sdiv i32 %32, 8
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* @NIU_NUM_RXCHAN, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %6, align 4
  %37 = mul nsw i32 %35, %36
  %38 = sub nsw i32 %34, %37
  %39 = load i32, i32* %5, align 4
  %40 = sdiv i32 %38, %39
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* @NIU_NUM_TXCHAN, align 4
  %42 = sdiv i32 %41, 6
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* @NIU_NUM_TXCHAN, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %6, align 4
  %46 = mul nsw i32 %44, %45
  %47 = sub nsw i32 %43, %46
  %48 = load i32, i32* %5, align 4
  %49 = sdiv i32 %47, %48
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %31, %24
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %51

51:                                               ; preds = %132, %50
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %135

55:                                               ; preds = %51
  %56 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %57 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @phy_decode(i32 %58, i32 %59)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* @PORT_TYPE_10G, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %55
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %67 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %65, i32* %71, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %74 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %72, i32* %78, align 4
  br label %94

79:                                               ; preds = %55
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %82 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %80, i32* %86, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %89 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %87, i32* %93, align 4
  br label %94

94:                                               ; preds = %79, %64
  %95 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %96 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %100 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %107 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %97, i32 %98, i32 %105, i32 %112)
  %114 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %115 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %13, align 4
  %123 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %124 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %14, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %14, align 4
  br label %132

132:                                              ; preds = %94
  %133 = load i32, i32* %12, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %12, align 4
  br label %51

135:                                              ; preds = %51
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* @NIU_NUM_RXCHAN, align 4
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %139, label %160

139:                                              ; preds = %135
  %140 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %141 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %13, align 4
  %144 = call i32 @pr_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %142, i32 %143)
  store i32 0, i32* %12, align 4
  br label %145

145:                                              ; preds = %156, %139
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* %7, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %159

149:                                              ; preds = %145
  %150 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %151 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  store i32 1, i32* %155, align 4
  br label %156

156:                                              ; preds = %149
  %157 = load i32, i32* %12, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %12, align 4
  br label %145

159:                                              ; preds = %145
  br label %160

160:                                              ; preds = %159, %135
  %161 = load i32, i32* %14, align 4
  %162 = load i32, i32* @NIU_NUM_TXCHAN, align 4
  %163 = icmp sgt i32 %161, %162
  br i1 %163, label %164, label %185

164:                                              ; preds = %160
  %165 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %166 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* %14, align 4
  %169 = call i32 @pr_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %167, i32 %168)
  store i32 0, i32* %12, align 4
  br label %170

170:                                              ; preds = %181, %164
  %171 = load i32, i32* %12, align 4
  %172 = load i32, i32* %7, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %184

174:                                              ; preds = %170
  %175 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %176 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %175, i32 0, i32 2
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %12, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  store i32 1, i32* %180, align 4
  br label %181

181:                                              ; preds = %174
  %182 = load i32, i32* %12, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %12, align 4
  br label %170

184:                                              ; preds = %170
  br label %185

185:                                              ; preds = %184, %160
  %186 = load i32, i32* %13, align 4
  %187 = load i32, i32* @NIU_NUM_RXCHAN, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %193, label %189

189:                                              ; preds = %185
  %190 = load i32, i32* %14, align 4
  %191 = load i32, i32* @NIU_NUM_TXCHAN, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %200

193:                                              ; preds = %189, %185
  %194 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %195 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* %13, align 4
  %198 = load i32, i32* %14, align 4
  %199 = call i32 @pr_warn(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %196, i32 %197, i32 %198)
  br label %200

200:                                              ; preds = %193, %189
  ret void
}

declare dso_local i32 @phy_decode(i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
