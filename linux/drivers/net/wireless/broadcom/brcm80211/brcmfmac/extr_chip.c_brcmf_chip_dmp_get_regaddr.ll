; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_chip.c_brcmf_chip_dmp_get_regaddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_chip.c_brcmf_chip_dmp_get_regaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_chip_priv = type { i32 }

@DMP_DESC_MASTER_PORT = common dso_local global i64 0, align 8
@DMP_MASTER_PORT_NUM = common dso_local global i32 0, align 4
@DMP_MASTER_PORT_NUM_S = common dso_local global i32 0, align 4
@DMP_SLAVE_TYPE_MWRAP = common dso_local global i64 0, align 8
@DMP_DESC_ADDRESS = common dso_local global i64 0, align 8
@DMP_SLAVE_TYPE_SWRAP = common dso_local global i64 0, align 8
@EILSEQ = common dso_local global i32 0, align 4
@DMP_DESC_EOT = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@DMP_DESC_COMPONENT = common dso_local global i64 0, align 8
@DMP_DESC_ADDRSIZE_GT32 = common dso_local global i32 0, align 4
@DMP_SLAVE_SIZE_TYPE = common dso_local global i32 0, align 4
@DMP_SLAVE_SIZE_TYPE_S = common dso_local global i32 0, align 4
@DMP_SLAVE_SIZE_DESC = common dso_local global i64 0, align 8
@DMP_SLAVE_SIZE_4K = common dso_local global i64 0, align 8
@DMP_SLAVE_SIZE_8K = common dso_local global i64 0, align 8
@DMP_SLAVE_TYPE = common dso_local global i32 0, align 4
@DMP_SLAVE_TYPE_S = common dso_local global i32 0, align 4
@DMP_SLAVE_TYPE_SLAVE = common dso_local global i64 0, align 8
@DMP_SLAVE_ADDR_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_chip_priv*, i32*, i32*, i32*)* @brcmf_chip_dmp_get_regaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_chip_dmp_get_regaddr(%struct.brcmf_chip_priv* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.brcmf_chip_priv*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.brcmf_chip_priv* %0, %struct.brcmf_chip_priv** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 0, i64* %13, align 8
  %17 = load i32*, i32** %8, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32*, i32** %9, align 8
  store i32 0, i32* %18, align 4
  %19 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %6, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @brcmf_chip_dmp_get_desc(%struct.brcmf_chip_priv* %19, i32* %20, i64* %10)
  store i32 %21, i32* %11, align 4
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @DMP_DESC_MASTER_PORT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @DMP_MASTER_PORT_NUM, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @DMP_MASTER_PORT_NUM_S, align 4
  %30 = ashr i32 %28, %29
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %13, align 8
  %32 = load i64, i64* @DMP_SLAVE_TYPE_MWRAP, align 8
  store i64 %32, i64* %16, align 8
  br label %49

33:                                               ; preds = %4
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* @DMP_DESC_ADDRESS, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 4
  store i32 %40, i32* %38, align 4
  %41 = load i64, i64* @DMP_SLAVE_TYPE_SWRAP, align 8
  store i64 %41, i64* %16, align 8
  br label %48

42:                                               ; preds = %33
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 4
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* @EILSEQ, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %168

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %25
  br label %50

50:                                               ; preds = %165, %49
  br label %51

51:                                               ; preds = %73, %50
  %52 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %6, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @brcmf_chip_dmp_get_desc(%struct.brcmf_chip_priv* %52, i32* %53, i64* %10)
  store i32 %54, i32* %11, align 4
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* @DMP_DESC_EOT, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %60, 4
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* @EFAULT, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %168

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* @DMP_DESC_ADDRESS, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* @DMP_DESC_COMPONENT, align 8
  %72 = icmp ne i64 %70, %71
  br label %73

73:                                               ; preds = %69, %65
  %74 = phi i1 [ false, %65 ], [ %72, %69 ]
  br i1 %74, label %51, label %75

75:                                               ; preds = %73
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* @DMP_DESC_COMPONENT, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %81, 4
  store i32 %82, i32* %80, align 4
  store i32 0, i32* %5, align 4
  br label %168

83:                                               ; preds = %75
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @DMP_DESC_ADDRSIZE_GT32, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %6, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @brcmf_chip_dmp_get_desc(%struct.brcmf_chip_priv* %89, i32* %90, i64* null)
  br label %92

92:                                               ; preds = %88, %83
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @DMP_SLAVE_SIZE_TYPE, align 4
  %95 = and i32 %93, %94
  %96 = load i32, i32* @DMP_SLAVE_SIZE_TYPE_S, align 4
  %97 = ashr i32 %95, %96
  %98 = sext i32 %97 to i64
  store i64 %98, i64* %15, align 8
  %99 = load i64, i64* %15, align 8
  %100 = load i64, i64* @DMP_SLAVE_SIZE_DESC, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %115

102:                                              ; preds = %92
  %103 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %6, align 8
  %104 = load i32*, i32** %7, align 8
  %105 = call i32 @brcmf_chip_dmp_get_desc(%struct.brcmf_chip_priv* %103, i32* %104, i64* null)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @DMP_DESC_ADDRSIZE_GT32, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %102
  %111 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %6, align 8
  %112 = load i32*, i32** %7, align 8
  %113 = call i32 @brcmf_chip_dmp_get_desc(%struct.brcmf_chip_priv* %111, i32* %112, i64* null)
  br label %114

114:                                              ; preds = %110, %102
  br label %115

115:                                              ; preds = %114, %92
  %116 = load i64, i64* %15, align 8
  %117 = load i64, i64* @DMP_SLAVE_SIZE_4K, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %115
  %120 = load i64, i64* %15, align 8
  %121 = load i64, i64* @DMP_SLAVE_SIZE_8K, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  br label %157

124:                                              ; preds = %119, %115
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* @DMP_SLAVE_TYPE, align 4
  %127 = and i32 %125, %126
  %128 = load i32, i32* @DMP_SLAVE_TYPE_S, align 4
  %129 = ashr i32 %127, %128
  %130 = sext i32 %129 to i64
  store i64 %130, i64* %14, align 8
  %131 = load i32*, i32** %8, align 8
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %124
  %135 = load i64, i64* %14, align 8
  %136 = load i64, i64* @DMP_SLAVE_TYPE_SLAVE, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %134
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* @DMP_SLAVE_ADDR_BASE, align 4
  %141 = and i32 %139, %140
  %142 = load i32*, i32** %8, align 8
  store i32 %141, i32* %142, align 4
  br label %143

143:                                              ; preds = %138, %134, %124
  %144 = load i32*, i32** %9, align 8
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %143
  %148 = load i64, i64* %14, align 8
  %149 = load i64, i64* %16, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %147
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* @DMP_SLAVE_ADDR_BASE, align 4
  %154 = and i32 %152, %153
  %155 = load i32*, i32** %9, align 8
  store i32 %154, i32* %155, align 4
  br label %156

156:                                              ; preds = %151, %147, %143
  br label %157

157:                                              ; preds = %156, %123
  %158 = load i32*, i32** %8, align 8
  %159 = load i32, i32* %158, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %157
  %162 = load i32*, i32** %9, align 8
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %163, 0
  br label %165

165:                                              ; preds = %161, %157
  %166 = phi i1 [ true, %157 ], [ %164, %161 ]
  br i1 %166, label %50, label %167

167:                                              ; preds = %165
  store i32 0, i32* %5, align 4
  br label %168

168:                                              ; preds = %167, %79, %58, %42
  %169 = load i32, i32* %5, align 4
  ret i32 %169
}

declare dso_local i32 @brcmf_chip_dmp_get_desc(%struct.brcmf_chip_priv*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
