; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio.c_mmc_attach_sdio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio.c_mmc_attach_sdio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, %struct.mmc_card*, i64, i64, i32 }
%struct.mmc_card = type { i32, %struct.TYPE_2__**, i64 }
%struct.TYPE_2__ = type { i32 }

@mmc_sdio_ops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MMC_CAP_POWER_OFF_CARD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%s: error %d whilst initialising SDIO card\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_attach_sdio(%struct.mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mmc_card*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  %10 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %11 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %18 = call i32 @mmc_send_io_op_cond(%struct.mmc_host* %17, i32 0, i32* %7)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %184

23:                                               ; preds = %1
  %24 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %25 = call i32 @mmc_attach_bus(%struct.mmc_host* %24, i32* @mmc_sdio_ops)
  %26 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %27 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %32 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %35 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %34, i32 0, i32 3
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %30, %23
  %37 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @mmc_select_voltage(%struct.mmc_host* %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %176

45:                                               ; preds = %36
  %46 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @mmc_sdio_init_card(%struct.mmc_host* %46, i32 %47, i32* null)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %176

52:                                               ; preds = %45
  %53 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %54 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %53, i32 0, i32 1
  %55 = load %struct.mmc_card*, %struct.mmc_card** %54, align 8
  store %struct.mmc_card* %55, %struct.mmc_card** %9, align 8
  %56 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %57 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MMC_CAP_POWER_OFF_CARD, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %52
  %63 = load %struct.mmc_card*, %struct.mmc_card** %9, align 8
  %64 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %63, i32 0, i32 0
  %65 = call i32 @pm_runtime_get_noresume(i32* %64)
  %66 = load %struct.mmc_card*, %struct.mmc_card** %9, align 8
  %67 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %66, i32 0, i32 0
  %68 = call i32 @pm_runtime_set_active(i32* %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  br label %168

72:                                               ; preds = %62
  %73 = load %struct.mmc_card*, %struct.mmc_card** %9, align 8
  %74 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %73, i32 0, i32 0
  %75 = call i32 @pm_runtime_enable(i32* %74)
  br label %76

76:                                               ; preds = %72, %52
  %77 = load i32, i32* %7, align 4
  %78 = and i32 %77, 1879048192
  %79 = ashr i32 %78, 28
  store i32 %79, i32* %6, align 4
  %80 = load %struct.mmc_card*, %struct.mmc_card** %9, align 8
  %81 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %80, i32 0, i32 2
  store i64 0, i64* %81, align 8
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %114, %76
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %121

86:                                               ; preds = %82
  %87 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %88 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %87, i32 0, i32 1
  %89 = load %struct.mmc_card*, %struct.mmc_card** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  %92 = call i32 @sdio_init_func(%struct.mmc_card* %89, i32 %91)
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  br label %168

96:                                               ; preds = %86
  %97 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %98 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @MMC_CAP_POWER_OFF_CARD, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %96
  %104 = load %struct.mmc_card*, %struct.mmc_card** %9, align 8
  %105 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %104, i32 0, i32 1
  %106 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %106, i64 %108
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = call i32 @pm_runtime_enable(i32* %111)
  br label %113

113:                                              ; preds = %103, %96
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %5, align 4
  %117 = load %struct.mmc_card*, %struct.mmc_card** %9, align 8
  %118 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* %118, align 8
  br label %82

121:                                              ; preds = %82
  %122 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %123 = call i32 @mmc_release_host(%struct.mmc_host* %122)
  %124 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %125 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %124, i32 0, i32 1
  %126 = load %struct.mmc_card*, %struct.mmc_card** %125, align 8
  %127 = call i32 @mmc_add_card(%struct.mmc_card* %126)
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* %4, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %121
  br label %171

131:                                              ; preds = %121
  store i32 0, i32* %5, align 4
  br label %132

132:                                              ; preds = %151, %131
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* %6, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %154

136:                                              ; preds = %132
  %137 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %138 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %137, i32 0, i32 1
  %139 = load %struct.mmc_card*, %struct.mmc_card** %138, align 8
  %140 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %139, i32 0, i32 1
  %141 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %140, align 8
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %141, i64 %143
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = call i32 @sdio_add_func(%struct.TYPE_2__* %145)
  store i32 %146, i32* %4, align 4
  %147 = load i32, i32* %4, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %136
  br label %171

150:                                              ; preds = %136
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %5, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %5, align 4
  br label %132

154:                                              ; preds = %132
  %155 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %156 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @MMC_CAP_POWER_OFF_CARD, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %154
  %162 = load %struct.mmc_card*, %struct.mmc_card** %9, align 8
  %163 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %162, i32 0, i32 0
  %164 = call i32 @pm_runtime_put(i32* %163)
  br label %165

165:                                              ; preds = %161, %154
  %166 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %167 = call i32 @mmc_claim_host(%struct.mmc_host* %166)
  store i32 0, i32* %2, align 4
  br label %184

168:                                              ; preds = %95, %71
  %169 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %170 = call i32 @mmc_release_host(%struct.mmc_host* %169)
  br label %171

171:                                              ; preds = %168, %149, %130
  %172 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %173 = call i32 @mmc_sdio_remove(%struct.mmc_host* %172)
  %174 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %175 = call i32 @mmc_claim_host(%struct.mmc_host* %174)
  br label %176

176:                                              ; preds = %171, %51, %42
  %177 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %178 = call i32 @mmc_detach_bus(%struct.mmc_host* %177)
  %179 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %180 = call i32 @mmc_hostname(%struct.mmc_host* %179)
  %181 = load i32, i32* %4, align 4
  %182 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %180, i32 %181)
  %183 = load i32, i32* %4, align 4
  store i32 %183, i32* %2, align 4
  br label %184

184:                                              ; preds = %176, %165, %21
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mmc_send_io_op_cond(%struct.mmc_host*, i32, i32*) #1

declare dso_local i32 @mmc_attach_bus(%struct.mmc_host*, i32*) #1

declare dso_local i32 @mmc_select_voltage(%struct.mmc_host*, i32) #1

declare dso_local i32 @mmc_sdio_init_card(%struct.mmc_host*, i32, i32*) #1

declare dso_local i32 @pm_runtime_get_noresume(i32*) #1

declare dso_local i32 @pm_runtime_set_active(i32*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @sdio_init_func(%struct.mmc_card*, i32) #1

declare dso_local i32 @mmc_release_host(%struct.mmc_host*) #1

declare dso_local i32 @mmc_add_card(%struct.mmc_card*) #1

declare dso_local i32 @sdio_add_func(%struct.TYPE_2__*) #1

declare dso_local i32 @pm_runtime_put(i32*) #1

declare dso_local i32 @mmc_claim_host(%struct.mmc_host*) #1

declare dso_local i32 @mmc_sdio_remove(%struct.mmc_host*) #1

declare dso_local i32 @mmc_detach_bus(%struct.mmc_host*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
