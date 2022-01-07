; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83640.c_dp83640_hwtstamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83640.c_dp83640_hwtstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.dp83640_private* }
%struct.dp83640_private = type { i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ifreq = type { i32 }
%struct.hwtstamp_config = type { i64, i32, i64 }

@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HWTSTAMP_TX_ONESTEP_SYNC = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@PTP_CLASS_L4 = common dso_local global i32 0, align 4
@PTP_CLASS_V1 = common dso_local global i32 0, align 4
@PTP_CLASS_V2 = common dso_local global i8* null, align 8
@PTP_CLASS_L2 = common dso_local global i32 0, align 4
@TX_PTP_VER_MASK = common dso_local global i32 0, align 4
@TX_PTP_VER_SHIFT = common dso_local global i32 0, align 4
@TX_L2_EN = common dso_local global i32 0, align 4
@RX_L2_EN = common dso_local global i32 0, align 4
@TX_IPV6_EN = common dso_local global i32 0, align 4
@TX_IPV4_EN = common dso_local global i32 0, align 4
@RX_IPV6_EN = common dso_local global i32 0, align 4
@RX_IPV4_EN = common dso_local global i32 0, align 4
@TX_TS_EN = common dso_local global i32 0, align 4
@SYNC_1STEP = common dso_local global i32 0, align 4
@CHK_1STEP = common dso_local global i32 0, align 4
@RX_TS_EN = common dso_local global i32 0, align 4
@PAGE5 = common dso_local global i32 0, align 4
@PTP_TXCFG0 = common dso_local global i32 0, align 4
@PTP_RXCFG0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, %struct.ifreq*)* @dp83640_hwtstamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dp83640_hwtstamp(%struct.phy_device* %0, %struct.ifreq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca %struct.dp83640_private*, align 8
  %7 = alloca %struct.hwtstamp_config, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  %10 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %11 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %10, i32 0, i32 0
  %12 = load %struct.dp83640_private*, %struct.dp83640_private** %11, align 8
  store %struct.dp83640_private* %12, %struct.dp83640_private** %6, align 8
  %13 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %14 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @copy_from_user(%struct.hwtstamp_config* %7, i32 %15, i32 24)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EFAULT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %206

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %7, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %206

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %7, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %7, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @HWTSTAMP_TX_ONESTEP_SYNC, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %32, %28
  %38 = load i32, i32* @ERANGE, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %206

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %7, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.dp83640_private*, %struct.dp83640_private** %6, align 8
  %44 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %7, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %95 [
    i32 140, label %47
    i32 138, label %54
    i32 137, label %54
    i32 139, label %54
    i32 130, label %63
    i32 129, label %63
    i32 131, label %63
    i32 133, label %73
    i32 132, label %73
    i32 134, label %73
    i32 135, label %83
    i32 128, label %83
    i32 136, label %83
  ]

47:                                               ; preds = %40
  %48 = load %struct.dp83640_private*, %struct.dp83640_private** %6, align 8
  %49 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %48, i32 0, i32 1
  store i32 0, i32* %49, align 8
  %50 = load %struct.dp83640_private*, %struct.dp83640_private** %6, align 8
  %51 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %50, i32 0, i32 2
  store i32 0, i32* %51, align 4
  %52 = load %struct.dp83640_private*, %struct.dp83640_private** %6, align 8
  %53 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %52, i32 0, i32 3
  store i32 0, i32* %53, align 8
  br label %98

54:                                               ; preds = %40, %40, %40
  %55 = load %struct.dp83640_private*, %struct.dp83640_private** %6, align 8
  %56 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %55, i32 0, i32 1
  store i32 1, i32* %56, align 8
  %57 = load i32, i32* @PTP_CLASS_L4, align 4
  %58 = load %struct.dp83640_private*, %struct.dp83640_private** %6, align 8
  %59 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @PTP_CLASS_V1, align 4
  %61 = load %struct.dp83640_private*, %struct.dp83640_private** %6, align 8
  %62 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  br label %98

63:                                               ; preds = %40, %40, %40
  %64 = load %struct.dp83640_private*, %struct.dp83640_private** %6, align 8
  %65 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %64, i32 0, i32 1
  store i32 1, i32* %65, align 8
  %66 = load i32, i32* @PTP_CLASS_L4, align 4
  %67 = load %struct.dp83640_private*, %struct.dp83640_private** %6, align 8
  %68 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load i8*, i8** @PTP_CLASS_V2, align 8
  %70 = ptrtoint i8* %69 to i32
  %71 = load %struct.dp83640_private*, %struct.dp83640_private** %6, align 8
  %72 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 8
  br label %98

73:                                               ; preds = %40, %40, %40
  %74 = load %struct.dp83640_private*, %struct.dp83640_private** %6, align 8
  %75 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %74, i32 0, i32 1
  store i32 1, i32* %75, align 8
  %76 = load i32, i32* @PTP_CLASS_L2, align 4
  %77 = load %struct.dp83640_private*, %struct.dp83640_private** %6, align 8
  %78 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load i8*, i8** @PTP_CLASS_V2, align 8
  %80 = ptrtoint i8* %79 to i32
  %81 = load %struct.dp83640_private*, %struct.dp83640_private** %6, align 8
  %82 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  br label %98

83:                                               ; preds = %40, %40, %40
  %84 = load %struct.dp83640_private*, %struct.dp83640_private** %6, align 8
  %85 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %84, i32 0, i32 1
  store i32 1, i32* %85, align 8
  %86 = load i32, i32* @PTP_CLASS_L4, align 4
  %87 = load i32, i32* @PTP_CLASS_L2, align 4
  %88 = or i32 %86, %87
  %89 = load %struct.dp83640_private*, %struct.dp83640_private** %6, align 8
  %90 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load i8*, i8** @PTP_CLASS_V2, align 8
  %92 = ptrtoint i8* %91 to i32
  %93 = load %struct.dp83640_private*, %struct.dp83640_private** %6, align 8
  %94 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 8
  br label %98

95:                                               ; preds = %40
  %96 = load i32, i32* @ERANGE, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %206

98:                                               ; preds = %83, %73, %63, %54, %47
  %99 = load %struct.dp83640_private*, %struct.dp83640_private** %6, align 8
  %100 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @TX_PTP_VER_MASK, align 4
  %103 = and i32 %101, %102
  %104 = load i32, i32* @TX_PTP_VER_SHIFT, align 4
  %105 = shl i32 %103, %104
  store i32 %105, i32* %8, align 4
  %106 = load %struct.dp83640_private*, %struct.dp83640_private** %6, align 8
  %107 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @TX_PTP_VER_MASK, align 4
  %110 = and i32 %108, %109
  %111 = load i32, i32* @TX_PTP_VER_SHIFT, align 4
  %112 = shl i32 %110, %111
  store i32 %112, i32* %9, align 4
  %113 = load %struct.dp83640_private*, %struct.dp83640_private** %6, align 8
  %114 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @PTP_CLASS_L2, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %98
  %120 = load i32, i32* @TX_L2_EN, align 4
  %121 = load i32, i32* %8, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* @RX_L2_EN, align 4
  %124 = load i32, i32* %9, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %9, align 4
  br label %126

126:                                              ; preds = %119, %98
  %127 = load %struct.dp83640_private*, %struct.dp83640_private** %6, align 8
  %128 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @PTP_CLASS_L4, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %126
  %134 = load i32, i32* @TX_IPV6_EN, align 4
  %135 = load i32, i32* @TX_IPV4_EN, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* %8, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* @RX_IPV6_EN, align 4
  %140 = load i32, i32* @RX_IPV4_EN, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* %9, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %9, align 4
  br label %144

144:                                              ; preds = %133, %126
  %145 = load %struct.dp83640_private*, %struct.dp83640_private** %6, align 8
  %146 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %144
  %150 = load i32, i32* @TX_TS_EN, align 4
  %151 = load i32, i32* %8, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %8, align 4
  br label %153

153:                                              ; preds = %149, %144
  %154 = load %struct.dp83640_private*, %struct.dp83640_private** %6, align 8
  %155 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @HWTSTAMP_TX_ONESTEP_SYNC, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %165

159:                                              ; preds = %153
  %160 = load i32, i32* @SYNC_1STEP, align 4
  %161 = load i32, i32* @CHK_1STEP, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* %8, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %8, align 4
  br label %165

165:                                              ; preds = %159, %153
  %166 = load %struct.dp83640_private*, %struct.dp83640_private** %6, align 8
  %167 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %165
  %171 = load i32, i32* @RX_TS_EN, align 4
  %172 = load i32, i32* %9, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %9, align 4
  br label %174

174:                                              ; preds = %170, %165
  %175 = load %struct.dp83640_private*, %struct.dp83640_private** %6, align 8
  %176 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %175, i32 0, i32 4
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  %179 = call i32 @mutex_lock(i32* %178)
  %180 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %181 = load i32, i32* @PAGE5, align 4
  %182 = load i32, i32* @PTP_TXCFG0, align 4
  %183 = load i32, i32* %8, align 4
  %184 = call i32 @ext_write(i32 0, %struct.phy_device* %180, i32 %181, i32 %182, i32 %183)
  %185 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %186 = load i32, i32* @PAGE5, align 4
  %187 = load i32, i32* @PTP_RXCFG0, align 4
  %188 = load i32, i32* %9, align 4
  %189 = call i32 @ext_write(i32 0, %struct.phy_device* %185, i32 %186, i32 %187, i32 %188)
  %190 = load %struct.dp83640_private*, %struct.dp83640_private** %6, align 8
  %191 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %190, i32 0, i32 4
  %192 = load %struct.TYPE_2__*, %struct.TYPE_2__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 0
  %194 = call i32 @mutex_unlock(i32* %193)
  %195 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %196 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i64 @copy_to_user(i32 %197, %struct.hwtstamp_config* %7, i32 24)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %174
  %201 = load i32, i32* @EFAULT, align 4
  %202 = sub nsw i32 0, %201
  br label %204

203:                                              ; preds = %174
  br label %204

204:                                              ; preds = %203, %200
  %205 = phi i32 [ %202, %200 ], [ 0, %203 ]
  store i32 %205, i32* %3, align 4
  br label %206

206:                                              ; preds = %204, %95, %37, %25, %18
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local i64 @copy_from_user(%struct.hwtstamp_config*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ext_write(i32, %struct.phy_device*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @copy_to_user(i32, %struct.hwtstamp_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
