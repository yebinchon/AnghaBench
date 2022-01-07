; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/cc770/extr_cc770.c_cc770_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/cc770/extr_cc770.c_cc770_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32*, i32*, i32 }
%struct.net_device = type { i32 }
%struct.cc770_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.can_frame = type { i32, i32, i32* }

@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@MSGCFG_DIR = common dso_local global i32 0, align 4
@msgobj = common dso_local global %struct.TYPE_4__* null, align 8
@MSGVAL_RES = common dso_local global i32 0, align 4
@TXIE_RES = common dso_local global i32 0, align 4
@RXIE_RES = common dso_local global i32 0, align 4
@INTPND_RES = common dso_local global i32 0, align 4
@RMTPND_RES = common dso_local global i32 0, align 4
@TXRQST_RES = common dso_local global i32 0, align 4
@CPUUPD_SET = common dso_local global i32 0, align 4
@NEWDAT_RES = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@CAN_EFF_MASK = common dso_local global i32 0, align 4
@MSGCFG_XTD = common dso_local global i32 0, align 4
@CAN_SFF_MASK = common dso_local global i32 0, align 4
@RMTPND_UNC = common dso_local global i32 0, align 4
@TXRQST_SET = common dso_local global i32 0, align 4
@CPUUPD_RES = common dso_local global i32 0, align 4
@NEWDAT_UNC = common dso_local global i32 0, align 4
@MSGVAL_SET = common dso_local global i32 0, align 4
@TXIE_SET = common dso_local global i32 0, align 4
@RXIE_SET = common dso_local global i32 0, align 4
@INTPND_UNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @cc770_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc770_tx(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cc770_priv*, align 8
  %6 = alloca %struct.can_frame*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.cc770_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.cc770_priv* %12, %struct.cc770_priv** %5, align 8
  %13 = load %struct.cc770_priv*, %struct.cc770_priv** %5, align 8
  %14 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.can_frame*
  store %struct.can_frame* %18, %struct.can_frame** %6, align 8
  %19 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %20 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  %22 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %23 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %26 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CAN_RTR_FLAG, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %34

32:                                               ; preds = %2
  %33 = load i32, i32* @MSGCFG_DIR, align 4
  br label %34

34:                                               ; preds = %32, %31
  %35 = phi i32 [ 0, %31 ], [ %33, %32 ]
  store i32 %35, i32* %8, align 4
  %36 = load %struct.cc770_priv*, %struct.cc770_priv** %5, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @msgobj, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @MSGVAL_RES, align 4
  %44 = load i32, i32* @TXIE_RES, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @RXIE_RES, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @INTPND_RES, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @cc770_write_reg(%struct.cc770_priv* %36, i32 %42, i32 %49)
  %51 = load %struct.cc770_priv*, %struct.cc770_priv** %5, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @msgobj, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @RMTPND_RES, align 4
  %59 = load i32, i32* @TXRQST_RES, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @CPUUPD_SET, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @NEWDAT_RES, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @cc770_write_reg(%struct.cc770_priv* %51, i32 %57, i32 %64)
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @CAN_EFF_FLAG, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %136

70:                                               ; preds = %34
  %71 = load i32, i32* @CAN_EFF_MASK, align 4
  %72 = load i32, i32* %9, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %9, align 4
  %74 = load %struct.cc770_priv*, %struct.cc770_priv** %5, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @msgobj, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = shl i32 %81, 4
  %83 = load i32, i32* %8, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @MSGCFG_XTD, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @cc770_write_reg(%struct.cc770_priv* %74, i32 %80, i32 %86)
  %88 = load %struct.cc770_priv*, %struct.cc770_priv** %5, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** @msgobj, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 3
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %9, align 4
  %98 = shl i32 %97, 3
  %99 = call i32 @cc770_write_reg(%struct.cc770_priv* %88, i32 %96, i32 %98)
  %100 = load %struct.cc770_priv*, %struct.cc770_priv** %5, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** @msgobj, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 2
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %9, align 4
  %110 = ashr i32 %109, 5
  %111 = call i32 @cc770_write_reg(%struct.cc770_priv* %100, i32 %108, i32 %110)
  %112 = load %struct.cc770_priv*, %struct.cc770_priv** %5, align 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** @msgobj, align 8
  %114 = load i32, i32* %4, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %9, align 4
  %122 = ashr i32 %121, 13
  %123 = call i32 @cc770_write_reg(%struct.cc770_priv* %112, i32 %120, i32 %122)
  %124 = load %struct.cc770_priv*, %struct.cc770_priv** %5, align 8
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** @msgobj, align 8
  %126 = load i32, i32* %4, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %9, align 4
  %134 = ashr i32 %133, 21
  %135 = call i32 @cc770_write_reg(%struct.cc770_priv* %124, i32 %132, i32 %134)
  br label %176

136:                                              ; preds = %34
  %137 = load i32, i32* @CAN_SFF_MASK, align 4
  %138 = load i32, i32* %9, align 4
  %139 = and i32 %138, %137
  store i32 %139, i32* %9, align 4
  %140 = load %struct.cc770_priv*, %struct.cc770_priv** %5, align 8
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** @msgobj, align 8
  %142 = load i32, i32* %4, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* %7, align 4
  %148 = shl i32 %147, 4
  %149 = load i32, i32* %8, align 4
  %150 = or i32 %148, %149
  %151 = call i32 @cc770_write_reg(%struct.cc770_priv* %140, i32 %146, i32 %150)
  %152 = load %struct.cc770_priv*, %struct.cc770_priv** %5, align 8
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** @msgobj, align 8
  %154 = load i32, i32* %4, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 3
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %9, align 4
  %162 = ashr i32 %161, 3
  %163 = call i32 @cc770_write_reg(%struct.cc770_priv* %152, i32 %160, i32 %162)
  %164 = load %struct.cc770_priv*, %struct.cc770_priv** %5, align 8
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** @msgobj, align 8
  %166 = load i32, i32* %4, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 3
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %9, align 4
  %174 = shl i32 %173, 5
  %175 = call i32 @cc770_write_reg(%struct.cc770_priv* %164, i32 %172, i32 %174)
  br label %176

176:                                              ; preds = %136, %70
  store i32 0, i32* %10, align 4
  br label %177

177:                                              ; preds = %201, %176
  %178 = load i32, i32* %10, align 4
  %179 = load i32, i32* %7, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %204

181:                                              ; preds = %177
  %182 = load %struct.cc770_priv*, %struct.cc770_priv** %5, align 8
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** @msgobj, align 8
  %184 = load i32, i32* %4, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 2
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %10, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %194 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %193, i32 0, i32 2
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %10, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @cc770_write_reg(%struct.cc770_priv* %182, i32 %192, i32 %199)
  br label %201

201:                                              ; preds = %181
  %202 = load i32, i32* %10, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %10, align 4
  br label %177

204:                                              ; preds = %177
  %205 = load %struct.cc770_priv*, %struct.cc770_priv** %5, align 8
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** @msgobj, align 8
  %207 = load i32, i32* %4, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @RMTPND_UNC, align 4
  %213 = load i32, i32* @TXRQST_SET, align 4
  %214 = or i32 %212, %213
  %215 = load i32, i32* @CPUUPD_RES, align 4
  %216 = or i32 %214, %215
  %217 = load i32, i32* @NEWDAT_UNC, align 4
  %218 = or i32 %216, %217
  %219 = call i32 @cc770_write_reg(%struct.cc770_priv* %205, i32 %211, i32 %218)
  %220 = load %struct.cc770_priv*, %struct.cc770_priv** %5, align 8
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** @msgobj, align 8
  %222 = load i32, i32* %4, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @MSGVAL_SET, align 4
  %228 = load i32, i32* @TXIE_SET, align 4
  %229 = or i32 %227, %228
  %230 = load i32, i32* @RXIE_SET, align 4
  %231 = or i32 %229, %230
  %232 = load i32, i32* @INTPND_UNC, align 4
  %233 = or i32 %231, %232
  %234 = call i32 @cc770_write_reg(%struct.cc770_priv* %220, i32 %226, i32 %233)
  ret void
}

declare dso_local %struct.cc770_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cc770_write_reg(%struct.cc770_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
