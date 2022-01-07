; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_pcmplc.c_lem_evaluate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_pcmplc.c_lem_evaluate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { i32 }
%struct.s_phy = type { i64, i8*, %struct.fddi_mib_p*, %struct.lem_counter }
%struct.fddi_mib_p = type { i32, i32, i32, i32, i32, i32 }
%struct.lem_counter = type { i32, i32, i32 }

@PL_LINK_ERR_CTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"LEM %c :\00", align 1
@PB = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"errors      : %ld\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"sum_errors  : %ld\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"current BER : 10E-%d\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"float BER   : 10E-(%d/100)\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"avg. BER    : 10E-%d\00", align 1
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@SMT_COND_PORT_LER = common dso_local global i32 0, align 4
@INDEX_PORT = common dso_local global i64 0, align 8
@EVENT_PCM = common dso_local global i64 0, align 8
@PC_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_smc*, %struct.s_phy*)* @lem_evaluate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lem_evaluate(%struct.s_smc* %0, %struct.s_phy* %1) #0 {
  %3 = alloca %struct.s_smc*, align 8
  %4 = alloca %struct.s_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lem_counter*, align 8
  %8 = alloca %struct.fddi_mib_p*, align 8
  %9 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %3, align 8
  store %struct.s_phy* %1, %struct.s_phy** %4, align 8
  %10 = load %struct.s_phy*, %struct.s_phy** %4, align 8
  %11 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %10, i32 0, i32 3
  store %struct.lem_counter* %11, %struct.lem_counter** %7, align 8
  %12 = load %struct.s_phy*, %struct.s_phy** %4, align 8
  %13 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %12, i32 0, i32 2
  %14 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %13, align 8
  store %struct.fddi_mib_p* %14, %struct.fddi_mib_p** %8, align 8
  %15 = load %struct.lem_counter*, %struct.lem_counter** %7, align 8
  %16 = getelementptr inbounds %struct.lem_counter, %struct.lem_counter* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %220

20:                                               ; preds = %2
  %21 = load %struct.s_phy*, %struct.s_phy** %4, align 8
  %22 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @PL_LINK_ERR_CTR, align 4
  %26 = call i32 @PLC(i32 %24, i32 %25)
  %27 = call i32 @inpw(i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.lem_counter*, %struct.lem_counter** %7, align 8
  %30 = getelementptr inbounds %struct.lem_counter, %struct.lem_counter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %8, align 8
  %35 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.lem_counter*, %struct.lem_counter** %7, align 8
  %39 = getelementptr inbounds %struct.lem_counter, %struct.lem_counter* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %20
  store i32 15, i32* %5, align 4
  br label %90

44:                                               ; preds = %20
  %45 = load i32, i32* %6, align 4
  %46 = icmp sle i32 %45, 9
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 9, i32* %5, align 4
  br label %89

48:                                               ; preds = %44
  %49 = load i32, i32* %6, align 4
  %50 = icmp sle i32 %49, 99
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 8, i32* %5, align 4
  br label %88

52:                                               ; preds = %48
  %53 = load i32, i32* %6, align 4
  %54 = icmp sle i32 %53, 999
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 7, i32* %5, align 4
  br label %87

56:                                               ; preds = %52
  %57 = load i32, i32* %6, align 4
  %58 = icmp sle i32 %57, 9999
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 6, i32* %5, align 4
  br label %86

60:                                               ; preds = %56
  %61 = load i32, i32* %6, align 4
  %62 = icmp sle i32 %61, 99999
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 5, i32* %5, align 4
  br label %85

64:                                               ; preds = %60
  %65 = load i32, i32* %6, align 4
  %66 = icmp sle i32 %65, 999999
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 4, i32* %5, align 4
  br label %84

68:                                               ; preds = %64
  %69 = load i32, i32* %6, align 4
  %70 = icmp sle i32 %69, 9999999
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 3, i32* %5, align 4
  br label %83

72:                                               ; preds = %68
  %73 = load i32, i32* %6, align 4
  %74 = icmp sle i32 %73, 99999999
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 2, i32* %5, align 4
  br label %82

76:                                               ; preds = %72
  %77 = load i32, i32* %6, align 4
  %78 = icmp sle i32 %77, 999999999
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 1, i32* %5, align 4
  br label %81

80:                                               ; preds = %76
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %80, %79
  br label %82

82:                                               ; preds = %81, %75
  br label %83

83:                                               ; preds = %82, %71
  br label %84

84:                                               ; preds = %83, %67
  br label %85

85:                                               ; preds = %84, %63
  br label %86

86:                                               ; preds = %85, %59
  br label %87

87:                                               ; preds = %86, %55
  br label %88

88:                                               ; preds = %87, %51
  br label %89

89:                                               ; preds = %88, %47
  br label %90

90:                                               ; preds = %89, %43
  %91 = load i32, i32* %5, align 4
  %92 = mul nsw i32 %91, 100
  store i32 %92, i32* %5, align 4
  %93 = load %struct.lem_counter*, %struct.lem_counter** %7, align 8
  %94 = getelementptr inbounds %struct.lem_counter, %struct.lem_counter* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %95, 7
  %97 = load i32, i32* %5, align 4
  %98 = mul nsw i32 %97, 3
  %99 = add nsw i32 %96, %98
  %100 = load %struct.lem_counter*, %struct.lem_counter** %7, align 8
  %101 = getelementptr inbounds %struct.lem_counter, %struct.lem_counter* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.lem_counter*, %struct.lem_counter** %7, align 8
  %103 = getelementptr inbounds %struct.lem_counter, %struct.lem_counter* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sdiv i32 %104, 10
  store i32 %105, i32* %103, align 4
  %106 = load %struct.lem_counter*, %struct.lem_counter** %7, align 8
  %107 = getelementptr inbounds %struct.lem_counter, %struct.lem_counter* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = sdiv i32 %108, 100
  %110 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %8, align 8
  %111 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %8, align 8
  %113 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp slt i32 %114, 4
  br i1 %115, label %116, label %119

116:                                              ; preds = %90
  %117 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %8, align 8
  %118 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %117, i32 0, i32 1
  store i32 4, i32* %118, align 4
  br label %119

119:                                              ; preds = %116, %90
  %120 = load %struct.lem_counter*, %struct.lem_counter** %7, align 8
  %121 = getelementptr inbounds %struct.lem_counter, %struct.lem_counter* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %158

124:                                              ; preds = %119
  %125 = load %struct.s_phy*, %struct.s_phy** %4, align 8
  %126 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @PB, align 8
  %129 = icmp eq i64 %127, %128
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i32 66, i32 65
  %132 = trunc i32 %131 to i8
  %133 = call i32 (i32, i8*, i8, ...) @DB_PCMN(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8 signext %132)
  %134 = load %struct.lem_counter*, %struct.lem_counter** %7, align 8
  %135 = getelementptr inbounds %struct.lem_counter, %struct.lem_counter* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = trunc i32 %136 to i8
  %138 = call i32 (i32, i8*, i8, ...) @DB_PCMN(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8 signext %137)
  %139 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %8, align 8
  %140 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = trunc i32 %141 to i8
  %143 = call i32 (i32, i8*, i8, ...) @DB_PCMN(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8 signext %142)
  %144 = load i32, i32* %5, align 4
  %145 = sdiv i32 %144, 100
  %146 = trunc i32 %145 to i8
  %147 = call i32 (i32, i8*, i8, ...) @DB_PCMN(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8 signext %146)
  %148 = load %struct.lem_counter*, %struct.lem_counter** %7, align 8
  %149 = getelementptr inbounds %struct.lem_counter, %struct.lem_counter* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = trunc i32 %150 to i8
  %152 = call i32 (i32, i8*, i8, ...) @DB_PCMN(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8 signext %151)
  %153 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %8, align 8
  %154 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = trunc i32 %155 to i8
  %157 = call i32 (i32, i8*, i8, ...) @DB_PCMN(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8 signext %156)
  br label %158

158:                                              ; preds = %124, %119
  %159 = load %struct.lem_counter*, %struct.lem_counter** %7, align 8
  %160 = getelementptr inbounds %struct.lem_counter, %struct.lem_counter* %159, i32 0, i32 0
  store i32 0, i32* %160, align 4
  %161 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %8, align 8
  %162 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %8, align 8
  %165 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = icmp sle i32 %163, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %158
  %169 = load i8*, i8** @TRUE, align 8
  br label %172

170:                                              ; preds = %158
  %171 = load i8*, i8** @FALSE, align 8
  br label %172

172:                                              ; preds = %170, %168
  %173 = phi i8* [ %169, %168 ], [ %171, %170 ]
  %174 = ptrtoint i8* %173 to i32
  store i32 %174, i32* %9, align 4
  %175 = load i32, i32* %9, align 4
  %176 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %8, align 8
  %177 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %175, %178
  br i1 %179, label %180, label %191

180:                                              ; preds = %172
  %181 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %182 = load i32, i32* @SMT_COND_PORT_LER, align 4
  %183 = load i64, i64* @INDEX_PORT, align 8
  %184 = load %struct.s_phy*, %struct.s_phy** %4, align 8
  %185 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = add nsw i64 %183, %186
  %188 = trunc i64 %187 to i32
  %189 = load i32, i32* %9, align 4
  %190 = call i32 @smt_srf_event(%struct.s_smc* %181, i32 %182, i32 %188, i32 %189)
  br label %191

191:                                              ; preds = %180, %172
  %192 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %8, align 8
  %193 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %8, align 8
  %196 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 4
  %198 = icmp sle i32 %194, %197
  br i1 %198, label %199, label %220

199:                                              ; preds = %191
  %200 = load i8*, i8** @TRUE, align 8
  %201 = load %struct.s_phy*, %struct.s_phy** %4, align 8
  %202 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %201, i32 0, i32 1
  store i8* %200, i8** %202, align 8
  %203 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %8, align 8
  %204 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %204, align 4
  %207 = load %struct.lem_counter*, %struct.lem_counter** %7, align 8
  %208 = getelementptr inbounds %struct.lem_counter, %struct.lem_counter* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %209, 200
  store i32 %210, i32* %208, align 4
  %211 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %212 = load i64, i64* @EVENT_PCM, align 8
  %213 = load %struct.s_phy*, %struct.s_phy** %4, align 8
  %214 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = add nsw i64 %212, %215
  %217 = trunc i64 %216 to i32
  %218 = load i32, i32* @PC_START, align 4
  %219 = call i32 @queue_event(%struct.s_smc* %211, i32 %217, i32 %218)
  br label %220

220:                                              ; preds = %19, %199, %191
  ret void
}

declare dso_local i32 @inpw(i32) #1

declare dso_local i32 @PLC(i32, i32) #1

declare dso_local i32 @DB_PCMN(i32, i8*, i8 signext, ...) #1

declare dso_local i32 @smt_srf_event(%struct.s_smc*, i32, i32, i32) #1

declare dso_local i32 @queue_event(%struct.s_smc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
