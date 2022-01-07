; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_set_flowkey_fields.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_set_flowkey_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nix_rx_flowkey_alg = type { i32, i32, i32, i32, i32, i32, i32, i8* }

@EINVAL = common dso_local global i32 0, align 4
@NPC_LID_LC = common dso_local global i8* null, align 8
@NPC_LT_LC_IP = common dso_local global i32 0, align 4
@NPC_LT_LC_IP6 = common dso_local global i32 0, align 4
@NPC_LID_LD = common dso_local global i8* null, align 8
@NPC_LT_LD_TCP = common dso_local global i32 0, align 4
@NPC_LT_LD_UDP = common dso_local global i32 0, align 4
@NPC_LT_LD_SCTP = common dso_local global i32 0, align 4
@NIX_AF_ERR_RSS_NOSPC_FIELD = common dso_local global i32 0, align 4
@FIELDS_PER_ALG = common dso_local global i32 0, align 4
@MAX_KEY_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nix_rx_flowkey_alg*, i32)* @set_flowkey_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_flowkey_fields(%struct.nix_rx_flowkey_alg* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nix_rx_flowkey_alg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nix_rx_flowkey_alg*, align 8
  %15 = alloca %struct.nix_rx_flowkey_alg, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.nix_rx_flowkey_alg* %0, %struct.nix_rx_flowkey_alg** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load %struct.nix_rx_flowkey_alg*, %struct.nix_rx_flowkey_alg** %4, align 8
  %19 = icmp ne %struct.nix_rx_flowkey_alg* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %190

23:                                               ; preds = %2
  %24 = load %struct.nix_rx_flowkey_alg*, %struct.nix_rx_flowkey_alg** %4, align 8
  %25 = call i32 @memset(%struct.nix_rx_flowkey_alg* %24, i32 0, i32 20)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store %struct.nix_rx_flowkey_alg* %15, %struct.nix_rx_flowkey_alg** %14, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @fls(i32 %26)
  store i32 %27, i32* %12, align 4
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %177, %23
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 5
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 40
  br label %38

38:                                               ; preds = %35, %32, %28
  %39 = phi i1 [ false, %32 ], [ false, %28 ], [ %37, %35 ]
  br i1 %39, label %40, label %180

40:                                               ; preds = %38
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @BIT(i32 %41)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %16, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = call i32 @memset(%struct.nix_rx_flowkey_alg* %15, i32 0, i32 40)
  br label %50

50:                                               ; preds = %48, %40
  %51 = load i32, i32* %16, align 4
  switch i32 %51, label %142 [
    i32 131, label %52
    i32 133, label %57
    i32 132, label %70
    i32 129, label %83
    i32 128, label %83
    i32 130, label %83
  ]

52:                                               ; preds = %50
  %53 = load %struct.nix_rx_flowkey_alg*, %struct.nix_rx_flowkey_alg** %14, align 8
  %54 = getelementptr inbounds %struct.nix_rx_flowkey_alg, %struct.nix_rx_flowkey_alg* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load %struct.nix_rx_flowkey_alg*, %struct.nix_rx_flowkey_alg** %14, align 8
  %56 = getelementptr inbounds %struct.nix_rx_flowkey_alg, %struct.nix_rx_flowkey_alg* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %142

57:                                               ; preds = %50
  %58 = load i8*, i8** @NPC_LID_LC, align 8
  %59 = load %struct.nix_rx_flowkey_alg*, %struct.nix_rx_flowkey_alg** %14, align 8
  %60 = getelementptr inbounds %struct.nix_rx_flowkey_alg, %struct.nix_rx_flowkey_alg* %59, i32 0, i32 7
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* @NPC_LT_LC_IP, align 4
  %62 = load %struct.nix_rx_flowkey_alg*, %struct.nix_rx_flowkey_alg** %14, align 8
  %63 = getelementptr inbounds %struct.nix_rx_flowkey_alg, %struct.nix_rx_flowkey_alg* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.nix_rx_flowkey_alg*, %struct.nix_rx_flowkey_alg** %14, align 8
  %65 = getelementptr inbounds %struct.nix_rx_flowkey_alg, %struct.nix_rx_flowkey_alg* %64, i32 0, i32 3
  store i32 12, i32* %65, align 4
  %66 = load %struct.nix_rx_flowkey_alg*, %struct.nix_rx_flowkey_alg** %14, align 8
  %67 = getelementptr inbounds %struct.nix_rx_flowkey_alg, %struct.nix_rx_flowkey_alg* %66, i32 0, i32 1
  store i32 7, i32* %67, align 4
  %68 = load %struct.nix_rx_flowkey_alg*, %struct.nix_rx_flowkey_alg** %14, align 8
  %69 = getelementptr inbounds %struct.nix_rx_flowkey_alg, %struct.nix_rx_flowkey_alg* %68, i32 0, i32 4
  store i32 15, i32* %69, align 8
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %142

70:                                               ; preds = %50
  %71 = load i8*, i8** @NPC_LID_LC, align 8
  %72 = load %struct.nix_rx_flowkey_alg*, %struct.nix_rx_flowkey_alg** %14, align 8
  %73 = getelementptr inbounds %struct.nix_rx_flowkey_alg, %struct.nix_rx_flowkey_alg* %72, i32 0, i32 7
  store i8* %71, i8** %73, align 8
  %74 = load i32, i32* @NPC_LT_LC_IP6, align 4
  %75 = load %struct.nix_rx_flowkey_alg*, %struct.nix_rx_flowkey_alg** %14, align 8
  %76 = getelementptr inbounds %struct.nix_rx_flowkey_alg, %struct.nix_rx_flowkey_alg* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.nix_rx_flowkey_alg*, %struct.nix_rx_flowkey_alg** %14, align 8
  %78 = getelementptr inbounds %struct.nix_rx_flowkey_alg, %struct.nix_rx_flowkey_alg* %77, i32 0, i32 3
  store i32 8, i32* %78, align 4
  %79 = load %struct.nix_rx_flowkey_alg*, %struct.nix_rx_flowkey_alg** %14, align 8
  %80 = getelementptr inbounds %struct.nix_rx_flowkey_alg, %struct.nix_rx_flowkey_alg* %79, i32 0, i32 1
  store i32 31, i32* %80, align 4
  %81 = load %struct.nix_rx_flowkey_alg*, %struct.nix_rx_flowkey_alg** %14, align 8
  %82 = getelementptr inbounds %struct.nix_rx_flowkey_alg, %struct.nix_rx_flowkey_alg* %81, i32 0, i32 4
  store i32 15, i32* %82, align 8
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %142

83:                                               ; preds = %50, %50, %50
  %84 = load i8*, i8** @NPC_LID_LD, align 8
  %85 = load %struct.nix_rx_flowkey_alg*, %struct.nix_rx_flowkey_alg** %14, align 8
  %86 = getelementptr inbounds %struct.nix_rx_flowkey_alg, %struct.nix_rx_flowkey_alg* %85, i32 0, i32 7
  store i8* %84, i8** %86, align 8
  %87 = load %struct.nix_rx_flowkey_alg*, %struct.nix_rx_flowkey_alg** %14, align 8
  %88 = getelementptr inbounds %struct.nix_rx_flowkey_alg, %struct.nix_rx_flowkey_alg* %87, i32 0, i32 1
  store i32 3, i32* %88, align 4
  %89 = load i32, i32* %16, align 4
  %90 = icmp eq i32 %89, 129
  br i1 %90, label %91, label %100

91:                                               ; preds = %83
  %92 = load i32, i32* %17, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load i32, i32* @NPC_LT_LD_TCP, align 4
  %96 = load %struct.nix_rx_flowkey_alg*, %struct.nix_rx_flowkey_alg** %14, align 8
  %97 = getelementptr inbounds %struct.nix_rx_flowkey_alg, %struct.nix_rx_flowkey_alg* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  store i32 1, i32* %13, align 4
  br label %126

100:                                              ; preds = %91, %83
  %101 = load i32, i32* %16, align 4
  %102 = icmp eq i32 %101, 128
  br i1 %102, label %103, label %112

103:                                              ; preds = %100
  %104 = load i32, i32* %17, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = load i32, i32* @NPC_LT_LD_UDP, align 4
  %108 = load %struct.nix_rx_flowkey_alg*, %struct.nix_rx_flowkey_alg** %14, align 8
  %109 = getelementptr inbounds %struct.nix_rx_flowkey_alg, %struct.nix_rx_flowkey_alg* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  store i32 1, i32* %13, align 4
  br label %125

112:                                              ; preds = %103, %100
  %113 = load i32, i32* %16, align 4
  %114 = icmp eq i32 %113, 130
  br i1 %114, label %115, label %124

115:                                              ; preds = %112
  %116 = load i32, i32* %17, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load i32, i32* @NPC_LT_LD_SCTP, align 4
  %120 = load %struct.nix_rx_flowkey_alg*, %struct.nix_rx_flowkey_alg** %14, align 8
  %121 = getelementptr inbounds %struct.nix_rx_flowkey_alg, %struct.nix_rx_flowkey_alg* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  store i32 1, i32* %13, align 4
  br label %124

124:                                              ; preds = %118, %115, %112
  br label %125

125:                                              ; preds = %124, %106
  br label %126

126:                                              ; preds = %125, %94
  %127 = load %struct.nix_rx_flowkey_alg*, %struct.nix_rx_flowkey_alg** %14, align 8
  %128 = getelementptr inbounds %struct.nix_rx_flowkey_alg, %struct.nix_rx_flowkey_alg* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = xor i32 %129, -1
  %131 = load %struct.nix_rx_flowkey_alg*, %struct.nix_rx_flowkey_alg** %14, align 8
  %132 = getelementptr inbounds %struct.nix_rx_flowkey_alg, %struct.nix_rx_flowkey_alg* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 8
  %133 = load i32, i32* %16, align 4
  %134 = icmp eq i32 %133, 130
  br i1 %134, label %135, label %140

135:                                              ; preds = %126
  %136 = load i32, i32* %13, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  store i32 1, i32* %17, align 4
  store i32 0, i32* %13, align 4
  br label %139

139:                                              ; preds = %138, %135
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %141

140:                                              ; preds = %126
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %141

141:                                              ; preds = %140, %139
  br label %142

142:                                              ; preds = %50, %141, %70, %57, %52
  %143 = load %struct.nix_rx_flowkey_alg*, %struct.nix_rx_flowkey_alg** %14, align 8
  %144 = getelementptr inbounds %struct.nix_rx_flowkey_alg, %struct.nix_rx_flowkey_alg* %143, i32 0, i32 5
  store i32 1, i32* %144, align 4
  %145 = load i32, i32* %17, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %169

147:                                              ; preds = %142
  %148 = load i32, i32* %8, align 4
  %149 = load %struct.nix_rx_flowkey_alg*, %struct.nix_rx_flowkey_alg** %14, align 8
  %150 = getelementptr inbounds %struct.nix_rx_flowkey_alg, %struct.nix_rx_flowkey_alg* %149, i32 0, i32 6
  store i32 %148, i32* %150, align 8
  %151 = load %struct.nix_rx_flowkey_alg*, %struct.nix_rx_flowkey_alg** %4, align 8
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.nix_rx_flowkey_alg, %struct.nix_rx_flowkey_alg* %151, i64 %153
  %155 = load %struct.nix_rx_flowkey_alg*, %struct.nix_rx_flowkey_alg** %14, align 8
  %156 = call i32 @memcpy(%struct.nix_rx_flowkey_alg* %154, %struct.nix_rx_flowkey_alg* %155, i32 40)
  %157 = load i32, i32* %11, align 4
  %158 = load %struct.nix_rx_flowkey_alg*, %struct.nix_rx_flowkey_alg** %14, align 8
  %159 = getelementptr inbounds %struct.nix_rx_flowkey_alg, %struct.nix_rx_flowkey_alg* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, 1
  %162 = call i32 @max(i32 %157, i32 %161)
  store i32 %162, i32* %11, align 4
  %163 = load i32, i32* %9, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %147
  %166 = load i32, i32* %7, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %7, align 4
  br label %168

168:                                              ; preds = %165, %147
  br label %169

169:                                              ; preds = %168, %142
  %170 = load i32, i32* %10, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %169
  %173 = load i32, i32* %11, align 4
  %174 = load i32, i32* %8, align 4
  %175 = add nsw i32 %174, %173
  store i32 %175, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %176

176:                                              ; preds = %172, %169
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %6, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %6, align 4
  br label %28

180:                                              ; preds = %38
  %181 = load i32, i32* %6, align 4
  %182 = load i32, i32* %12, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %180
  %185 = load i32, i32* %8, align 4
  %186 = icmp sle i32 %185, 40
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  store i32 0, i32* %3, align 4
  br label %190

188:                                              ; preds = %184, %180
  %189 = load i32, i32* @NIX_AF_ERR_RSS_NOSPC_FIELD, align 4
  store i32 %189, i32* %3, align 4
  br label %190

190:                                              ; preds = %188, %187, %20
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local i32 @memset(%struct.nix_rx_flowkey_alg*, i32, i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @memcpy(%struct.nix_rx_flowkey_alg*, %struct.nix_rx_flowkey_alg*, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
