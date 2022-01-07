; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_do_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_do_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hsmmc_host = type { %struct.TYPE_4__*, i64, i32, i32, i64, %struct.mmc_data* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mmc_data = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"IRQ Status is %x\0A\00", align 1
@ERR_EN = common dso_local global i32 0, align 4
@CTO_EN = common dso_local global i32 0, align 4
@CCRC_EN = common dso_local global i32 0, align 4
@CEB_EN = common dso_local global i32 0, align 4
@DTO_EN = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@DCRC_EN = common dso_local global i32 0, align 4
@DEB_EN = common dso_local global i32 0, align 4
@BADA_EN = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@ACE_EN = common dso_local global i32 0, align 4
@AC12 = common dso_local global i32 0, align 4
@ACNE = common dso_local global i32 0, align 4
@ACTO = common dso_local global i32 0, align 4
@ACCE = common dso_local global i32 0, align 4
@ACEB = common dso_local global i32 0, align 4
@ACIE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"AC12 err: 0x%x\0A\00", align 1
@STAT = common dso_local global i32 0, align 4
@CC_EN = common dso_local global i32 0, align 4
@TC_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_hsmmc_host*, i32)* @omap_hsmmc_do_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_hsmmc_do_irq(%struct.omap_hsmmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.omap_hsmmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.omap_hsmmc_host* %0, %struct.omap_hsmmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %11 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %10, i32 0, i32 5
  %12 = load %struct.mmc_data*, %struct.mmc_data** %11, align 8
  store %struct.mmc_data* %12, %struct.mmc_data** %5, align 8
  %13 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %14 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @mmc_dev(i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @dev_vdbg(i32 %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @ERR_EN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %149

23:                                               ; preds = %2
  %24 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @omap_hsmmc_dbg_report_irq(%struct.omap_hsmmc_host* %24, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @CTO_EN, align 4
  %29 = load i32, i32* @CCRC_EN, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @CEB_EN, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %27, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  store i32 1, i32* %6, align 4
  br label %36

36:                                               ; preds = %35, %23
  %37 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %38 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %37, i32 0, i32 5
  %39 = load %struct.mmc_data*, %struct.mmc_data** %38, align 8
  %40 = icmp ne %struct.mmc_data* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %43 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41, %36
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %7, align 4
  %51 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %52 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %51, i32 0, i32 4
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %46, %41
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @CTO_EN, align 4
  %56 = load i32, i32* @DTO_EN, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %62 = load i32, i32* @ETIMEDOUT, align 4
  %63 = sub nsw i32 0, %62
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @hsmmc_command_incomplete(%struct.omap_hsmmc_host* %61, i32 %63, i32 %64)
  br label %86

66:                                               ; preds = %53
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @CCRC_EN, align 4
  %69 = load i32, i32* @DCRC_EN, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @DEB_EN, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @CEB_EN, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @BADA_EN, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %67, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %66
  %80 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %81 = load i32, i32* @EILSEQ, align 4
  %82 = sub nsw i32 0, %81
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @hsmmc_command_incomplete(%struct.omap_hsmmc_host* %80, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %79, %66
  br label %86

86:                                               ; preds = %85, %60
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @ACE_EN, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %148

91:                                               ; preds = %86
  %92 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %93 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @AC12, align 4
  %96 = call i32 @OMAP_HSMMC_READ(i32 %94, i32 %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @ACNE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %141, label %101

101:                                              ; preds = %91
  %102 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %103 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = icmp ne %struct.TYPE_3__* %106, null
  br i1 %107, label %108, label %141

108:                                              ; preds = %101
  store i32 1, i32* %6, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @ACTO, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i32, i32* @ETIMEDOUT, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %8, align 4
  br label %129

116:                                              ; preds = %108
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* @ACCE, align 4
  %119 = load i32, i32* @ACEB, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @ACIE, align 4
  %122 = or i32 %120, %121
  %123 = and i32 %117, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %116
  %126 = load i32, i32* @EILSEQ, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %8, align 4
  br label %128

128:                                              ; preds = %125, %116
  br label %129

129:                                              ; preds = %128, %113
  %130 = load i32, i32* %8, align 4
  %131 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %132 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %131, i32 0, i32 0
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  store i32 %130, i32* %136, align 4
  %137 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* %6, align 4
  %140 = call i32 @hsmmc_command_incomplete(%struct.omap_hsmmc_host* %137, i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %129, %101, %91
  %142 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %143 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @mmc_dev(i32 %144)
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @dev_dbg(i32 %145, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %141, %86
  br label %149

149:                                              ; preds = %148, %2
  %150 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %151 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @STAT, align 4
  %154 = load i32, i32* %4, align 4
  %155 = call i32 @OMAP_HSMMC_WRITE(i32 %152, i32 %153, i32 %154)
  %156 = load i32, i32* %6, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %168, label %158

158:                                              ; preds = %149
  %159 = load i32, i32* %4, align 4
  %160 = load i32, i32* @CC_EN, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %174

163:                                              ; preds = %158
  %164 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %165 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %163, %149
  %169 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %170 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %171 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @omap_hsmmc_cmd_done(%struct.omap_hsmmc_host* %169, i64 %172)
  br label %174

174:                                              ; preds = %168, %163, %158
  %175 = load i32, i32* %7, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %182, label %177

177:                                              ; preds = %174
  %178 = load i32, i32* %4, align 4
  %179 = load i32, i32* @TC_EN, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %191

182:                                              ; preds = %177, %174
  %183 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %184 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %183, i32 0, i32 0
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = icmp ne %struct.TYPE_4__* %185, null
  br i1 %186, label %187, label %191

187:                                              ; preds = %182
  %188 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %189 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %190 = call i32 @omap_hsmmc_xfer_done(%struct.omap_hsmmc_host* %188, %struct.mmc_data* %189)
  br label %191

191:                                              ; preds = %187, %182, %177
  ret void
}

declare dso_local i32 @dev_vdbg(i32, i8*, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @omap_hsmmc_dbg_report_irq(%struct.omap_hsmmc_host*, i32) #1

declare dso_local i32 @hsmmc_command_incomplete(%struct.omap_hsmmc_host*, i32, i32) #1

declare dso_local i32 @OMAP_HSMMC_READ(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @OMAP_HSMMC_WRITE(i32, i32, i32) #1

declare dso_local i32 @omap_hsmmc_cmd_done(%struct.omap_hsmmc_host*, i64) #1

declare dso_local i32 @omap_hsmmc_xfer_done(%struct.omap_hsmmc_host*, %struct.mmc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
