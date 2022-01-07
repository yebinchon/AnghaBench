; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_legacy.c_nand_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_legacy.c_nand_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 (%struct.nand_chip.0*, i32, i32)* }
%struct.nand_chip.0 = type opaque
%struct.mtd_info = type { i32 }

@NAND_CTRL_CLE = common dso_local global i32 0, align 4
@NAND_CTRL_CHANGE = common dso_local global i32 0, align 4
@NAND_CMD_READOOB = common dso_local global i32 0, align 4
@NAND_CMD_READ1 = common dso_local global i32 0, align 4
@NAND_CTRL_ALE = common dso_local global i32 0, align 4
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@NAND_ROW_ADDR_3 = common dso_local global i32 0, align 4
@NAND_NCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32, i32, i32)* @nand_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nand_command(%struct.nand_chip* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mtd_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %13 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %12)
  store %struct.mtd_info* %13, %struct.mtd_info** %9, align 8
  %14 = load i32, i32* @NAND_CTRL_CLE, align 4
  %15 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 130
  br i1 %18, label %19, label %55

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %22 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %20, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %27 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* @NAND_CMD_READOOB, align 4
  store i32 %31, i32* %11, align 4
  br label %41

32:                                               ; preds = %19
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 256
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 133, i32* %11, align 4
  br label %40

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 %37, 256
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* @NAND_CMD_READ1, align 4
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %36, %35
  br label %41

41:                                               ; preds = %40, %25
  %42 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %43 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32 (%struct.nand_chip.0*, i32, i32)*, i32 (%struct.nand_chip.0*, i32, i32)** %44, align 8
  %46 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %47 = bitcast %struct.nand_chip* %46 to %struct.nand_chip.0*
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 %45(%struct.nand_chip.0* %47, i32 %48, i32 %49)
  %51 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %10, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %41, %4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 135
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %60 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i32 (%struct.nand_chip.0*, i32, i32)*, i32 (%struct.nand_chip.0*, i32, i32)** %61, align 8
  %63 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %64 = bitcast %struct.nand_chip* %63 to %struct.nand_chip.0*
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 %62(%struct.nand_chip.0* %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %58, %55
  %69 = load i32, i32* @NAND_CTRL_ALE, align 4
  %70 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %71 = or i32 %69, %70
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, -1
  br i1 %73, label %74, label %102

74:                                               ; preds = %68
  %75 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %76 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %74
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @nand_opcode_8bits(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* %7, align 4
  %87 = ashr i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %85, %81, %74
  %89 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %90 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = load i32 (%struct.nand_chip.0*, i32, i32)*, i32 (%struct.nand_chip.0*, i32, i32)** %91, align 8
  %93 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %94 = bitcast %struct.nand_chip* %93 to %struct.nand_chip.0*
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 %92(%struct.nand_chip.0* %94, i32 %95, i32 %96)
  %98 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %99 = xor i32 %98, -1
  %100 = load i32, i32* %10, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %88, %68
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, -1
  br i1 %104, label %105, label %147

105:                                              ; preds = %102
  %106 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %107 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  %109 = load i32 (%struct.nand_chip.0*, i32, i32)*, i32 (%struct.nand_chip.0*, i32, i32)** %108, align 8
  %110 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %111 = bitcast %struct.nand_chip* %110 to %struct.nand_chip.0*
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %10, align 4
  %114 = call i32 %109(%struct.nand_chip.0* %111, i32 %112, i32 %113)
  %115 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %116 = xor i32 %115, -1
  %117 = load i32, i32* %10, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %10, align 4
  %119 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %120 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 2
  %122 = load i32 (%struct.nand_chip.0*, i32, i32)*, i32 (%struct.nand_chip.0*, i32, i32)** %121, align 8
  %123 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %124 = bitcast %struct.nand_chip* %123 to %struct.nand_chip.0*
  %125 = load i32, i32* %8, align 4
  %126 = ashr i32 %125, 8
  %127 = load i32, i32* %10, align 4
  %128 = call i32 %122(%struct.nand_chip.0* %124, i32 %126, i32 %127)
  %129 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %130 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @NAND_ROW_ADDR_3, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %105
  %136 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %137 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 2
  %139 = load i32 (%struct.nand_chip.0*, i32, i32)*, i32 (%struct.nand_chip.0*, i32, i32)** %138, align 8
  %140 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %141 = bitcast %struct.nand_chip* %140 to %struct.nand_chip.0*
  %142 = load i32, i32* %8, align 4
  %143 = ashr i32 %142, 16
  %144 = load i32, i32* %10, align 4
  %145 = call i32 %139(%struct.nand_chip.0* %141, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %135, %105
  br label %147

147:                                              ; preds = %146, %102
  %148 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %149 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 2
  %151 = load i32 (%struct.nand_chip.0*, i32, i32)*, i32 (%struct.nand_chip.0*, i32, i32)** %150, align 8
  %152 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %153 = bitcast %struct.nand_chip* %152 to %struct.nand_chip.0*
  %154 = load i32, i32* @NAND_NCE, align 4
  %155 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %156 = or i32 %154, %155
  %157 = call i32 %151(%struct.nand_chip.0* %153, i32 135, i32 %156)
  %158 = load i32, i32* %6, align 4
  switch i32 %158, label %203 [
    i32 135, label %159
    i32 134, label %159
    i32 137, label %159
    i32 136, label %159
    i32 130, label %159
    i32 128, label %159
    i32 132, label %159
    i32 129, label %159
    i32 131, label %160
    i32 133, label %195
  ]

159:                                              ; preds = %147, %147, %147, %147, %147, %147, %147, %147
  br label %220

160:                                              ; preds = %147
  %161 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %162 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %160
  br label %216

167:                                              ; preds = %160
  %168 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %169 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @udelay(i32 %171)
  %173 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %174 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 2
  %176 = load i32 (%struct.nand_chip.0*, i32, i32)*, i32 (%struct.nand_chip.0*, i32, i32)** %175, align 8
  %177 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %178 = bitcast %struct.nand_chip* %177 to %struct.nand_chip.0*
  %179 = load i32, i32* @NAND_CTRL_CLE, align 4
  %180 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %181 = or i32 %179, %180
  %182 = call i32 %176(%struct.nand_chip.0* %178, i32 128, i32 %181)
  %183 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %184 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 2
  %186 = load i32 (%struct.nand_chip.0*, i32, i32)*, i32 (%struct.nand_chip.0*, i32, i32)** %185, align 8
  %187 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %188 = bitcast %struct.nand_chip* %187 to %struct.nand_chip.0*
  %189 = load i32, i32* @NAND_NCE, align 4
  %190 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %191 = or i32 %189, %190
  %192 = call i32 %186(%struct.nand_chip.0* %188, i32 135, i32 %191)
  %193 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %194 = call i32 @nand_wait_status_ready(%struct.nand_chip* %193, i32 250)
  br label %220

195:                                              ; preds = %147
  %196 = load i32, i32* %7, align 4
  %197 = icmp eq i32 %196, -1
  br i1 %197, label %198, label %202

198:                                              ; preds = %195
  %199 = load i32, i32* %8, align 4
  %200 = icmp eq i32 %199, -1
  br i1 %200, label %201, label %202

201:                                              ; preds = %198
  br label %220

202:                                              ; preds = %198, %195
  br label %203

203:                                              ; preds = %147, %202
  %204 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %205 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %215, label %209

209:                                              ; preds = %203
  %210 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %211 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @udelay(i32 %213)
  br label %220

215:                                              ; preds = %203
  br label %216

216:                                              ; preds = %215, %166
  %217 = call i32 @ndelay(i32 100)
  %218 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %219 = call i32 @nand_wait_ready(%struct.nand_chip* %218)
  br label %220

220:                                              ; preds = %216, %209, %201, %167, %159
  ret void
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @nand_opcode_8bits(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @nand_wait_status_ready(%struct.nand_chip*, i32) #1

declare dso_local i32 @ndelay(i32) #1

declare dso_local i32 @nand_wait_ready(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
