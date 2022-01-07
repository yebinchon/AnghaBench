; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_generic.c_ppp_ccp_peek.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_generic.c_ppp_ccp_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppp = type { i32, i32, i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__*, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32 (i32)*, i32 (i32, i8*, i32, i32, i32, i32)* }
%struct.TYPE_5__ = type { i32 (i32)*, i32 (i32, i8*, i32, i32, i32, i32, i32)* }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i8* }

@CCP_HDRLEN = common dso_local global i32 0, align 4
@SC_COMP_RUN = common dso_local global i32 0, align 4
@SC_DECOMP_RUN = common dso_local global i32 0, align 4
@SC_CCP_OPEN = common dso_local global i32 0, align 4
@SC_CCP_UP = common dso_local global i32 0, align 4
@CCP_OPT_MINLEN = common dso_local global i32 0, align 4
@SC_DC_ERROR = common dso_local global i32 0, align 4
@SC_DC_FERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ppp*, %struct.sk_buff*, i32)* @ppp_ccp_peek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppp_ccp_peek(%struct.ppp* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.ppp*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.ppp* %0, %struct.ppp** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = load i32, i32* @CCP_HDRLEN, align 4
  %11 = add nsw i32 %10, 2
  %12 = call i32 @pskb_may_pull(%struct.sk_buff* %9, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %235

15:                                               ; preds = %3
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 2
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @CCP_CODE(i8* %20)
  switch i32 %21, label %235 [
    i32 131, label %22
    i32 128, label %40
    i32 129, label %40
    i32 132, label %53
    i32 130, label %171
  ]

22:                                               ; preds = %15
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i32, i32* @SC_COMP_RUN, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.ppp*, %struct.ppp** %4, align 8
  %29 = getelementptr inbounds %struct.ppp, %struct.ppp* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  br label %39

32:                                               ; preds = %22
  %33 = load i32, i32* @SC_DECOMP_RUN, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.ppp*, %struct.ppp** %4, align 8
  %36 = getelementptr inbounds %struct.ppp, %struct.ppp* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %32, %25
  br label %235

40:                                               ; preds = %15, %15
  %41 = load i32, i32* @SC_DECOMP_RUN, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.ppp*, %struct.ppp** %4, align 8
  %44 = getelementptr inbounds %struct.ppp, %struct.ppp* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* @SC_COMP_RUN, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.ppp*, %struct.ppp** %4, align 8
  %50 = getelementptr inbounds %struct.ppp, %struct.ppp* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %235

53:                                               ; preds = %15
  %54 = load %struct.ppp*, %struct.ppp** %4, align 8
  %55 = getelementptr inbounds %struct.ppp, %struct.ppp* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @SC_CCP_OPEN, align 4
  %58 = load i32, i32* @SC_CCP_UP, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %56, %59
  %61 = load i32, i32* @SC_CCP_OPEN, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %235

64:                                               ; preds = %53
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @CCP_LENGTH(i8* %65)
  store i32 %66, i32* %8, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 2
  %70 = call i32 @pskb_may_pull(%struct.sk_buff* %67, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %64
  br label %235

73:                                               ; preds = %64
  %74 = load i32, i32* @CCP_HDRLEN, align 4
  %75 = load i8*, i8** %7, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %77, i8** %7, align 8
  %78 = load i32, i32* @CCP_HDRLEN, align 4
  %79 = load i32, i32* %8, align 4
  %80 = sub nsw i32 %79, %78
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @CCP_OPT_MINLEN, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %89, label %84

84:                                               ; preds = %73
  %85 = load i32, i32* %8, align 4
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 @CCP_OPT_LENGTH(i8* %86)
  %88 = icmp slt i32 %85, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %84, %73
  br label %235

90:                                               ; preds = %84
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %137

93:                                               ; preds = %90
  %94 = load %struct.ppp*, %struct.ppp** %4, align 8
  %95 = getelementptr inbounds %struct.ppp, %struct.ppp* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %93
  br label %235

99:                                               ; preds = %93
  %100 = load %struct.ppp*, %struct.ppp** %4, align 8
  %101 = getelementptr inbounds %struct.ppp, %struct.ppp* %100, i32 0, i32 6
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i32 (i32, i8*, i32, i32, i32, i32, i32)*, i32 (i32, i8*, i32, i32, i32, i32, i32)** %103, align 8
  %105 = load %struct.ppp*, %struct.ppp** %4, align 8
  %106 = getelementptr inbounds %struct.ppp, %struct.ppp* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.ppp*, %struct.ppp** %4, align 8
  %111 = getelementptr inbounds %struct.ppp, %struct.ppp* %110, i32 0, i32 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.ppp*, %struct.ppp** %4, align 8
  %115 = getelementptr inbounds %struct.ppp, %struct.ppp* %114, i32 0, i32 9
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.ppp*, %struct.ppp** %4, align 8
  %118 = getelementptr inbounds %struct.ppp, %struct.ppp* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 8
  %120 = call i32 %104(i32 %107, i8* %108, i32 %109, i32 %113, i32 0, i32 %116, i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %99
  %123 = load i32, i32* @SC_DECOMP_RUN, align 4
  %124 = load %struct.ppp*, %struct.ppp** %4, align 8
  %125 = getelementptr inbounds %struct.ppp, %struct.ppp* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 4
  %128 = load i32, i32* @SC_DC_ERROR, align 4
  %129 = load i32, i32* @SC_DC_FERROR, align 4
  %130 = or i32 %128, %129
  %131 = xor i32 %130, -1
  %132 = load %struct.ppp*, %struct.ppp** %4, align 8
  %133 = getelementptr inbounds %struct.ppp, %struct.ppp* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, %131
  store i32 %135, i32* %133, align 4
  br label %136

136:                                              ; preds = %122, %99
  br label %170

137:                                              ; preds = %90
  %138 = load %struct.ppp*, %struct.ppp** %4, align 8
  %139 = getelementptr inbounds %struct.ppp, %struct.ppp* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %137
  br label %235

143:                                              ; preds = %137
  %144 = load %struct.ppp*, %struct.ppp** %4, align 8
  %145 = getelementptr inbounds %struct.ppp, %struct.ppp* %144, i32 0, i32 4
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load i32 (i32, i8*, i32, i32, i32, i32)*, i32 (i32, i8*, i32, i32, i32, i32)** %147, align 8
  %149 = load %struct.ppp*, %struct.ppp** %4, align 8
  %150 = getelementptr inbounds %struct.ppp, %struct.ppp* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = load i8*, i8** %7, align 8
  %153 = load i32, i32* %8, align 4
  %154 = load %struct.ppp*, %struct.ppp** %4, align 8
  %155 = getelementptr inbounds %struct.ppp, %struct.ppp* %154, i32 0, i32 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.ppp*, %struct.ppp** %4, align 8
  %159 = getelementptr inbounds %struct.ppp, %struct.ppp* %158, i32 0, i32 7
  %160 = load i32, i32* %159, align 8
  %161 = call i32 %148(i32 %151, i8* %152, i32 %153, i32 %157, i32 0, i32 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %143
  %164 = load i32, i32* @SC_COMP_RUN, align 4
  %165 = load %struct.ppp*, %struct.ppp** %4, align 8
  %166 = getelementptr inbounds %struct.ppp, %struct.ppp* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = or i32 %167, %164
  store i32 %168, i32* %166, align 8
  br label %169

169:                                              ; preds = %163, %143
  br label %170

170:                                              ; preds = %169, %136
  br label %235

171:                                              ; preds = %15
  %172 = load %struct.ppp*, %struct.ppp** %4, align 8
  %173 = getelementptr inbounds %struct.ppp, %struct.ppp* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @SC_CCP_UP, align 4
  %176 = and i32 %174, %175
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %171
  br label %235

179:                                              ; preds = %171
  %180 = load i32, i32* %6, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %211

182:                                              ; preds = %179
  %183 = load %struct.ppp*, %struct.ppp** %4, align 8
  %184 = getelementptr inbounds %struct.ppp, %struct.ppp* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 8
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %210

187:                                              ; preds = %182
  %188 = load %struct.ppp*, %struct.ppp** %4, align 8
  %189 = getelementptr inbounds %struct.ppp, %struct.ppp* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @SC_DECOMP_RUN, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %210

194:                                              ; preds = %187
  %195 = load %struct.ppp*, %struct.ppp** %4, align 8
  %196 = getelementptr inbounds %struct.ppp, %struct.ppp* %195, i32 0, i32 6
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 0
  %199 = load i32 (i32)*, i32 (i32)** %198, align 8
  %200 = load %struct.ppp*, %struct.ppp** %4, align 8
  %201 = getelementptr inbounds %struct.ppp, %struct.ppp* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 8
  %203 = call i32 %199(i32 %202)
  %204 = load i32, i32* @SC_DC_ERROR, align 4
  %205 = xor i32 %204, -1
  %206 = load %struct.ppp*, %struct.ppp** %4, align 8
  %207 = getelementptr inbounds %struct.ppp, %struct.ppp* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = and i32 %208, %205
  store i32 %209, i32* %207, align 4
  br label %210

210:                                              ; preds = %194, %187, %182
  br label %234

211:                                              ; preds = %179
  %212 = load %struct.ppp*, %struct.ppp** %4, align 8
  %213 = getelementptr inbounds %struct.ppp, %struct.ppp* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %233

216:                                              ; preds = %211
  %217 = load %struct.ppp*, %struct.ppp** %4, align 8
  %218 = getelementptr inbounds %struct.ppp, %struct.ppp* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @SC_COMP_RUN, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %233

223:                                              ; preds = %216
  %224 = load %struct.ppp*, %struct.ppp** %4, align 8
  %225 = getelementptr inbounds %struct.ppp, %struct.ppp* %224, i32 0, i32 4
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  %228 = load i32 (i32)*, i32 (i32)** %227, align 8
  %229 = load %struct.ppp*, %struct.ppp** %4, align 8
  %230 = getelementptr inbounds %struct.ppp, %struct.ppp* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = call i32 %228(i32 %231)
  br label %233

233:                                              ; preds = %223, %216, %211
  br label %234

234:                                              ; preds = %233, %210
  br label %235

235:                                              ; preds = %14, %72, %15, %234, %178, %170, %142, %98, %89, %63, %40, %39
  ret void
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @CCP_CODE(i8*) #1

declare dso_local i32 @CCP_LENGTH(i8*) #1

declare dso_local i32 @CCP_OPT_LENGTH(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
