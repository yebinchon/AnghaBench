; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_base.c_genwqe_fir_checking.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_base.c_genwqe_fir_checking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genwqe_dev = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"* exit looping after %d times\0A\00", align 1
@IO_SLC_CFGREG_GFIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"* 0x%08x 0x%016llx\0A\00", align 1
@IO_ILLEGAL_VALUE = common dso_local global i32 0, align 4
@GFIR_ERR_TRIGGER = common dso_local global i32 0, align 4
@GENWQE_MAX_UNITS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"[HM] Clearing  2ndary FIR 0x%08x with 0x%016llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"[HM] Clearing primary FIR 0x%08x with 0x%016llx\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"ACK! Another FIR! Recursing %d!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genwqe_dev*)* @genwqe_fir_checking to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genwqe_fir_checking(%struct.genwqe_dev* %0) #0 {
  %2 = alloca i32, align 4
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
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.pci_dev*, align 8
  store %struct.genwqe_dev* %0, %struct.genwqe_dev** %3, align 8
  store i32 0, i32* %5, align 4
  %20 = load %struct.genwqe_dev*, %struct.genwqe_dev** %3, align 8
  %21 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %20, i32 0, i32 0
  %22 = load %struct.pci_dev*, %struct.pci_dev** %21, align 8
  store %struct.pci_dev* %22, %struct.pci_dev** %19, align 8
  br label %23

23:                                               ; preds = %220, %162, %1
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp sgt i32 %26, 16
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %5, align 4
  %32 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %227

33:                                               ; preds = %23
  %34 = load %struct.genwqe_dev*, %struct.genwqe_dev** %3, align 8
  %35 = load i32, i32* @IO_SLC_CFGREG_GFIR, align 4
  %36 = call i32 @__genwqe_readq(%struct.genwqe_dev* %34, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 0
  %42 = load i32, i32* @IO_SLC_CFGREG_GFIR, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %39, %33
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @IO_ILLEGAL_VALUE, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %227

50:                                               ; preds = %45
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %229

54:                                               ; preds = %50
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @GFIR_ERR_TRIGGER, align 4
  %57 = and i32 %55, %56
  store i32 %57, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %201, %54
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @GENWQE_MAX_UNITS, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %204

62:                                               ; preds = %58
  %63 = load i32, i32* %9, align 4
  %64 = shl i32 %63, 24
  %65 = add nsw i32 %64, 8
  store i32 %65, i32* %14, align 4
  %66 = load %struct.genwqe_dev*, %struct.genwqe_dev** %3, align 8
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @__genwqe_readq(%struct.genwqe_dev* %66, i32 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  br label %201

72:                                               ; preds = %62
  %73 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  %74 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %73, i32 0, i32 0
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %76)
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @IO_ILLEGAL_VALUE, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  br label %227

82:                                               ; preds = %72
  %83 = load i32, i32* %9, align 4
  %84 = shl i32 %83, 24
  %85 = add nsw i32 %84, 24
  store i32 %85, i32* %16, align 4
  %86 = load %struct.genwqe_dev*, %struct.genwqe_dev** %3, align 8
  %87 = load i32, i32* %16, align 4
  %88 = call i32 @__genwqe_readq(%struct.genwqe_dev* %86, i32 %87)
  store i32 %88, i32* %8, align 4
  %89 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  %90 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %89, i32 0, i32 0
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %90, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %91, i32 %92)
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @IO_ILLEGAL_VALUE, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %82
  br label %227

98:                                               ; preds = %82
  store i32 0, i32* %4, align 4
  store i32 1, i32* %6, align 4
  br label %99

99:                                               ; preds = %195, %98
  %100 = load i32, i32* %4, align 4
  %101 = icmp slt i32 %100, 64
  br i1 %101, label %102, label %200

102:                                              ; preds = %99
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %6, align 4
  %105 = and i32 %103, %104
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %195

108:                                              ; preds = %102
  %109 = load i32, i32* %9, align 4
  %110 = shl i32 %109, 24
  %111 = add nsw i32 %110, 256
  %112 = load i32, i32* %4, align 4
  %113 = mul nsw i32 8, %112
  %114 = add nsw i32 %111, %113
  store i32 %114, i32* %17, align 4
  %115 = load %struct.genwqe_dev*, %struct.genwqe_dev** %3, align 8
  %116 = load i32, i32* %17, align 4
  %117 = call i32 @__genwqe_readq(%struct.genwqe_dev* %115, i32 %116)
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* @IO_ILLEGAL_VALUE, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %108
  br label %227

122:                                              ; preds = %108
  %123 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  %124 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %123, i32 0, i32 0
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* %12, align 4
  %127 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %124, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %125, i32 %126)
  %128 = load i32, i32* %9, align 4
  %129 = shl i32 %128, 24
  %130 = add nsw i32 %129, 768
  %131 = load i32, i32* %4, align 4
  %132 = mul nsw i32 8, %131
  %133 = add nsw i32 %130, %132
  store i32 %133, i32* %18, align 4
  %134 = load %struct.genwqe_dev*, %struct.genwqe_dev** %3, align 8
  %135 = load i32, i32* %18, align 4
  %136 = call i32 @__genwqe_readq(%struct.genwqe_dev* %134, i32 %135)
  store i32 %136, i32* %13, align 4
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* @IO_ILLEGAL_VALUE, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %122
  br label %227

141:                                              ; preds = %122
  %142 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  %143 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %142, i32 0, i32 0
  %144 = load i32, i32* %18, align 4
  %145 = load i32, i32* %13, align 4
  %146 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %143, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %144, i32 %145)
  %147 = load %struct.genwqe_dev*, %struct.genwqe_dev** %3, align 8
  %148 = load i32, i32* @IO_SLC_CFGREG_GFIR, align 4
  %149 = call i32 @__genwqe_readq(%struct.genwqe_dev* %147, i32 %148)
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* @IO_ILLEGAL_VALUE, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %141
  br label %227

154:                                              ; preds = %141
  %155 = load i32, i32* %11, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %154
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* @GFIR_ERR_TRIGGER, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  br label %23

163:                                              ; preds = %157, %154
  %164 = load i32, i32* %11, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %194

166:                                              ; preds = %163
  %167 = load i32, i32* %9, align 4
  %168 = shl i32 %167, 24
  %169 = add nsw i32 %168, 256
  %170 = load i32, i32* %4, align 4
  %171 = mul nsw i32 8, %170
  %172 = add nsw i32 %169, %171
  store i32 %172, i32* %17, align 4
  %173 = load %struct.genwqe_dev*, %struct.genwqe_dev** %3, align 8
  %174 = load i32, i32* %17, align 4
  %175 = load i32, i32* %12, align 4
  %176 = call i32 @__genwqe_writeq(%struct.genwqe_dev* %173, i32 %174, i32 %175)
  %177 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  %178 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %177, i32 0, i32 0
  %179 = load i32, i32* %17, align 4
  %180 = load i32, i32* %12, align 4
  %181 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %178, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %179, i32 %180)
  %182 = load i32, i32* %9, align 4
  %183 = shl i32 %182, 24
  %184 = add nsw i32 %183, 16
  store i32 %184, i32* %15, align 4
  %185 = load %struct.genwqe_dev*, %struct.genwqe_dev** %3, align 8
  %186 = load i32, i32* %15, align 4
  %187 = load i32, i32* %6, align 4
  %188 = call i32 @__genwqe_writeq(%struct.genwqe_dev* %185, i32 %186, i32 %187)
  %189 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  %190 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %189, i32 0, i32 0
  %191 = load i32, i32* %15, align 4
  %192 = load i32, i32* %6, align 4
  %193 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %190, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %191, i32 %192)
  br label %194

194:                                              ; preds = %166, %163
  br label %195

195:                                              ; preds = %194, %107
  %196 = load i32, i32* %4, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %4, align 4
  %198 = load i32, i32* %6, align 4
  %199 = shl i32 %198, 1
  store i32 %199, i32* %6, align 4
  br label %99

200:                                              ; preds = %99
  br label %201

201:                                              ; preds = %200, %71
  %202 = load i32, i32* %9, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %9, align 4
  br label %58

204:                                              ; preds = %58
  %205 = load %struct.genwqe_dev*, %struct.genwqe_dev** %3, align 8
  %206 = load i32, i32* @IO_SLC_CFGREG_GFIR, align 4
  %207 = call i32 @__genwqe_readq(%struct.genwqe_dev* %205, i32 %206)
  store i32 %207, i32* %10, align 4
  %208 = load i32, i32* %10, align 4
  %209 = load i32, i32* @IO_ILLEGAL_VALUE, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %204
  br label %227

212:                                              ; preds = %204
  %213 = load i32, i32* %11, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %225

215:                                              ; preds = %212
  %216 = load i32, i32* %10, align 4
  %217 = load i32, i32* @GFIR_ERR_TRIGGER, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %215
  %221 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  %222 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %221, i32 0, i32 0
  %223 = load i32, i32* %5, align 4
  %224 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %222, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %223)
  br label %23

225:                                              ; preds = %215, %212
  %226 = load i32, i32* %11, align 4
  store i32 %226, i32* %2, align 4
  br label %229

227:                                              ; preds = %211, %153, %140, %121, %97, %81, %49, %28
  %228 = load i32, i32* @IO_ILLEGAL_VALUE, align 4
  store i32 %228, i32* %2, align 4
  br label %229

229:                                              ; preds = %227, %225, %53
  %230 = load i32, i32* %2, align 4
  ret i32 %230
}

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @__genwqe_readq(%struct.genwqe_dev*, i32) #1

declare dso_local i32 @__genwqe_writeq(%struct.genwqe_dev*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
