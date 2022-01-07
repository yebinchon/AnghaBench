; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_winbond-cir.c_wbcir_irq_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_winbond-cir.c_wbcir_irq_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wbcir_data = type { i64*, i32, i64, i64, i64 }

@WBCIR_TX_UNDERRUN = common dso_local global i32 0, align 4
@WBCIR_REG_SP3_ASCR = common dso_local global i64 0, align 8
@WBCIR_IRQ_RX = common dso_local global i32 0, align 4
@WBCIR_IRQ_ERR = common dso_local global i32 0, align 4
@WBCIR_REG_SP3_TXDATA = common dso_local global i64 0, align 8
@WBCIR_TX_EOT = common dso_local global i32 0, align 4
@WBCIR_IRQ_TX_EMPTY = common dso_local global i32 0, align 4
@WBCIR_REG_SP3_RXDATA = common dso_local global i64 0, align 8
@WBCIR_IRQ_TX_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wbcir_data*)* @wbcir_irq_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wbcir_irq_tx(%struct.wbcir_data* %0) #0 {
  %2 = alloca %struct.wbcir_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [16 x i32], align 16
  %6 = alloca i32, align 4
  store %struct.wbcir_data* %0, %struct.wbcir_data** %2, align 8
  %7 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %8 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = icmp ne i64* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %213

12:                                               ; preds = %1
  %13 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %14 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %19 [
    i32 128, label %16
    i32 130, label %17
    i32 129, label %18
  ]

16:                                               ; preds = %12
  store i32 16, i32* %3, align 4
  br label %20

17:                                               ; preds = %12
  store i32 13, i32* %3, align 4
  br label %20

18:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %20

19:                                               ; preds = %12
  br label %213

20:                                               ; preds = %18, %17, %16
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %86, %20
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %27 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %30 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br label %33

33:                                               ; preds = %25, %21
  %34 = phi i1 [ false, %21 ], [ %32, %25 ]
  br i1 %34, label %35, label %89

35:                                               ; preds = %33
  %36 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %37 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %40 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i64, i64* %38, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %35
  %46 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %47 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %47, align 8
  br label %86

50:                                               ; preds = %35
  %51 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %52 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %55 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i64, i64* %53, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @min(i32 128, i64 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %63 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %66 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i64, i64* %64, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %69, %61
  store i64 %70, i64* %68, align 8
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %6, align 4
  %73 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %74 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = urem i64 %75, 2
  %77 = icmp ne i64 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 128, i32 0
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %4, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %84
  store i32 %82, i32* %85, align 4
  br label %86

86:                                               ; preds = %50, %45
  %87 = load i32, i32* %4, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %4, align 4
  br label %21

89:                                               ; preds = %33
  br label %90

90:                                               ; preds = %110, %89
  %91 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %92 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %95 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %93, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %90
  %99 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %100 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %99, i32 0, i32 0
  %101 = load i64*, i64** %100, align 8
  %102 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %103 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds i64, i64* %101, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %106, 0
  br label %108

108:                                              ; preds = %98, %90
  %109 = phi i1 [ false, %90 ], [ %107, %98 ]
  br i1 %109, label %110, label %115

110:                                              ; preds = %108
  %111 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %112 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %112, align 8
  br label %90

115:                                              ; preds = %108
  %116 = load i32, i32* %4, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %145

118:                                              ; preds = %115
  %119 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %120 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = icmp eq i32 %121, 129
  br i1 %122, label %123, label %131

123:                                              ; preds = %118
  %124 = load i32, i32* @WBCIR_TX_UNDERRUN, align 4
  %125 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %126 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @WBCIR_REG_SP3_ASCR, align 8
  %129 = add nsw i64 %127, %128
  %130 = call i32 @outb(i32 %124, i64 %129)
  br label %131

131:                                              ; preds = %123, %118
  %132 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %133 = load i32, i32* @WBCIR_IRQ_RX, align 4
  %134 = load i32, i32* @WBCIR_IRQ_ERR, align 4
  %135 = or i32 %133, %134
  %136 = call i32 @wbcir_set_irqmask(%struct.wbcir_data* %132, i32 %135)
  %137 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %138 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %137, i32 0, i32 0
  %139 = load i64*, i64** %138, align 8
  %140 = call i32 @kfree(i64* %139)
  %141 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %142 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %141, i32 0, i32 0
  store i64* null, i64** %142, align 8
  %143 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %144 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %143, i32 0, i32 1
  store i32 128, i32* %144, align 8
  br label %213

145:                                              ; preds = %115
  %146 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %147 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %150 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = icmp eq i64 %148, %151
  br i1 %152, label %153, label %188

153:                                              ; preds = %145
  %154 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %155 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %154, i32 0, i32 4
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @WBCIR_REG_SP3_TXDATA, align 8
  %158 = add nsw i64 %156, %157
  %159 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  %160 = load i32, i32* %4, align 4
  %161 = sub i32 %160, 1
  %162 = call i32 @outsb(i64 %158, i32* %159, i32 %161)
  %163 = load i32, i32* @WBCIR_TX_EOT, align 4
  %164 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %165 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %164, i32 0, i32 4
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @WBCIR_REG_SP3_ASCR, align 8
  %168 = add nsw i64 %166, %167
  %169 = call i32 @outb(i32 %163, i64 %168)
  %170 = load i32, i32* %4, align 4
  %171 = sub i32 %170, 1
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %176 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %175, i32 0, i32 4
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @WBCIR_REG_SP3_TXDATA, align 8
  %179 = add nsw i64 %177, %178
  %180 = call i32 @outb(i32 %174, i64 %179)
  %181 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %182 = load i32, i32* @WBCIR_IRQ_RX, align 4
  %183 = load i32, i32* @WBCIR_IRQ_ERR, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @WBCIR_IRQ_TX_EMPTY, align 4
  %186 = or i32 %184, %185
  %187 = call i32 @wbcir_set_irqmask(%struct.wbcir_data* %181, i32 %186)
  br label %212

188:                                              ; preds = %145
  %189 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %190 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %189, i32 0, i32 4
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @WBCIR_REG_SP3_RXDATA, align 8
  %193 = add nsw i64 %191, %192
  %194 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  %195 = load i32, i32* %4, align 4
  %196 = call i32 @outsb(i64 %193, i32* %194, i32 %195)
  %197 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %198 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = icmp eq i32 %199, 128
  br i1 %200, label %201, label %211

201:                                              ; preds = %188
  %202 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %203 = load i32, i32* @WBCIR_IRQ_RX, align 4
  %204 = load i32, i32* @WBCIR_IRQ_ERR, align 4
  %205 = or i32 %203, %204
  %206 = load i32, i32* @WBCIR_IRQ_TX_LOW, align 4
  %207 = or i32 %205, %206
  %208 = call i32 @wbcir_set_irqmask(%struct.wbcir_data* %202, i32 %207)
  %209 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %210 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %209, i32 0, i32 1
  store i32 130, i32* %210, align 8
  br label %211

211:                                              ; preds = %201, %188
  br label %212

212:                                              ; preds = %211, %153
  br label %213

213:                                              ; preds = %11, %19, %212, %131
  ret void
}

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @wbcir_set_irqmask(%struct.wbcir_data*, i32) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @outsb(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
