; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_t3_hw.c_get_vpd_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_t3_hw.c_get_vpd_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.vpd_params = type { i32*, i32, i32*, i32, i32, i32, i32, i32, i32 }
%struct.t3_vpd = type { i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@VPD_BASE = common dso_local global i32 0, align 4
@SERNUM_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.vpd_params*)* @get_vpd_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_vpd_params(%struct.adapter* %0, %struct.vpd_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.vpd_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.t3_vpd, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.vpd_params* %1, %struct.vpd_params** %5, align 8
  %10 = load %struct.adapter*, %struct.adapter** %4, align 8
  %11 = load i32, i32* @VPD_BASE, align 4
  %12 = bitcast %struct.t3_vpd* %9 to i32*
  %13 = call i32 @t3_seeprom_read(%struct.adapter* %10, i32 %11, i32* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %209

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 130
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @VPD_BASE, align 4
  br label %25

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  store i32 %26, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %46, %25
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp ult i64 %29, 88
  br i1 %30, label %31, label %49

31:                                               ; preds = %27
  %32 = load %struct.adapter*, %struct.adapter** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %33, %34
  %36 = bitcast %struct.t3_vpd* %9 to i32*
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = call i32 @t3_seeprom_read(%struct.adapter* %32, i32 %35, i32* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %209

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 4
  store i32 %48, i32* %6, align 4
  br label %27

49:                                               ; preds = %27
  %50 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 18
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 17
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %55 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %54, i32 0, i32 8
  %56 = call i32 @vpdstrtouint(i32 %51, i32 %53, i32 10, i32* %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %3, align 4
  br label %209

61:                                               ; preds = %49
  %62 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 16
  %63 = load i32, i32* %62, align 8
  %64 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 15
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %67 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %66, i32 0, i32 7
  %68 = call i32 @vpdstrtouint(i32 %63, i32 %65, i32 10, i32* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  br label %209

73:                                               ; preds = %61
  %74 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 14
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 13
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %79 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %78, i32 0, i32 6
  %80 = call i32 @vpdstrtouint(i32 %75, i32 %77, i32 10, i32* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %73
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %3, align 4
  br label %209

85:                                               ; preds = %73
  %86 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 12
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 11
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %91 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %90, i32 0, i32 5
  %92 = call i32 @vpdstrtouint(i32 %87, i32 %89, i32 10, i32* %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %85
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %3, align 4
  br label %209

97:                                               ; preds = %85
  %98 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 10
  %99 = load i32, i32* %98, align 8
  %100 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 9
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %103 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %102, i32 0, i32 4
  %104 = call i32 @vpdstrtouint(i32 %99, i32 %101, i32 10, i32* %103)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %97
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %3, align 4
  br label %209

109:                                              ; preds = %97
  %110 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %111 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 8
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @SERNUM_LEN, align 4
  %116 = call i32 @memcpy(i32 %112, i32 %114, i32 %115)
  %117 = load %struct.adapter*, %struct.adapter** %4, align 8
  %118 = getelementptr inbounds %struct.adapter, %struct.adapter* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %147

122:                                              ; preds = %109
  %123 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 7
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %147, label %128

128:                                              ; preds = %122
  %129 = load %struct.adapter*, %struct.adapter** %4, align 8
  %130 = call i64 @uses_xaui(%struct.adapter* %129)
  %131 = icmp ne i64 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i32 1, i32 2
  %134 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %135 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  store i32 %133, i32* %137, align 4
  %138 = load %struct.adapter*, %struct.adapter** %4, align 8
  %139 = call i64 @uses_xaui(%struct.adapter* %138)
  %140 = icmp ne i64 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i32 6, i32 2
  %143 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %144 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  store i32 %142, i32* %146, align 4
  br label %196

147:                                              ; preds = %122, %109
  %148 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 7
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = call i8* @hex_to_bin(i32 %151)
  %153 = ptrtoint i8* %152 to i32
  %154 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %155 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  store i32 %153, i32* %157, align 4
  %158 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 6
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  %161 = load i32, i32* %160, align 4
  %162 = call i8* @hex_to_bin(i32 %161)
  %163 = ptrtoint i8* %162 to i32
  %164 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %165 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 1
  store i32 %163, i32* %167, align 4
  %168 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 5
  %169 = load i32, i32* %168, align 4
  %170 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %173 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %172, i32 0, i32 2
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  %176 = call i32 @vpdstrtou16(i32 %169, i32 %171, i32 16, i32* %175)
  store i32 %176, i32* %8, align 4
  %177 = load i32, i32* %8, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %147
  %180 = load i32, i32* %8, align 4
  store i32 %180, i32* %3, align 4
  br label %209

181:                                              ; preds = %147
  %182 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %187 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %186, i32 0, i32 2
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 1
  %190 = call i32 @vpdstrtou16(i32 %183, i32 %185, i32 16, i32* %189)
  store i32 %190, i32* %8, align 4
  %191 = load i32, i32* %8, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %181
  %194 = load i32, i32* %8, align 4
  store i32 %194, i32* %3, align 4
  br label %209

195:                                              ; preds = %181
  br label %196

196:                                              ; preds = %195, %128
  %197 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %198 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @hex2bin(i32 %199, i32 %201, i32 6)
  store i32 %202, i32* %8, align 4
  %203 = load i32, i32* %8, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %196
  %206 = load i32, i32* @EINVAL, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %3, align 4
  br label %209

208:                                              ; preds = %196
  store i32 0, i32* %3, align 4
  br label %209

209:                                              ; preds = %208, %205, %193, %179, %107, %95, %83, %71, %59, %43, %16
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local i32 @t3_seeprom_read(%struct.adapter*, i32, i32*) #1

declare dso_local i32 @vpdstrtouint(i32, i32, i32, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @uses_xaui(%struct.adapter*) #1

declare dso_local i8* @hex_to_bin(i32) #1

declare dso_local i32 @vpdstrtou16(i32, i32, i32, i32*) #1

declare dso_local i32 @hex2bin(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
