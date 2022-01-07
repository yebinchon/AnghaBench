; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_calc_con.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_calc_con.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb_output = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.ddb* }
%struct.ddb = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@DDB_OCTOPUS_CI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ddb_output*, i32*, i32*, i32)* @calc_con to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_con(%struct.ddb_output* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ddb_output*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ddb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ddb_output* %0, %struct.ddb_output** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.ddb_output*, %struct.ddb_output** %5, align 8
  %15 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  %18 = load %struct.ddb*, %struct.ddb** %17, align 8
  store %struct.ddb* %18, %struct.ddb** %9, align 8
  %19 = load %struct.ddb_output*, %struct.ddb_output** %5, align 8
  %20 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %10, align 4
  store i32 72000, i32* %11, align 4
  store i32 4, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %24 = load i32*, i32** %6, align 8
  store i32 28, i32* %24, align 4
  %25 = load %struct.ddb_output*, %struct.ddb_output** %5, align 8
  %26 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %39

31:                                               ; preds = %4
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, 1
  store i32 %33, i32* %8, align 4
  %34 = load %struct.ddb_output*, %struct.ddb_output** %5, align 8
  %35 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %31, %4
  %40 = load %struct.ddb*, %struct.ddb** %9, align 8
  %41 = getelementptr inbounds %struct.ddb, %struct.ddb* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @DDB_OCTOPUS_CI, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %122

50:                                               ; preds = %39
  %51 = load %struct.ddb_output*, %struct.ddb_output** %5, align 8
  %52 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %122

57:                                               ; preds = %50
  %58 = load i32*, i32** %6, align 8
  store i32 268, i32* %58, align 4
  %59 = load %struct.ddb*, %struct.ddb** %9, align 8
  %60 = getelementptr inbounds %struct.ddb, %struct.ddb* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp sge i32 %65, 65539
  br i1 %66, label %67, label %110

67:                                               ; preds = %57
  %68 = load i32, i32* %8, align 4
  %69 = and i32 %68, 1
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %110, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %8, align 4
  %73 = and i32 %72, 2
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %95, label %75

75:                                               ; preds = %71
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 72000
  br i1 %77, label %78, label %94

78:                                               ; preds = %75
  %79 = load i32, i32* %10, align 4
  %80 = icmp sge i32 %79, 96000
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, 2048
  store i32 %84, i32* %82, align 4
  br label %93

85:                                               ; preds = %78
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, 4096
  store i32 %88, i32* %86, align 4
  %89 = load i32, i32* %10, align 4
  %90 = mul nsw i32 %89, 8192
  %91 = add nsw i32 %90, 71999
  %92 = sdiv i32 %91, 72000
  store i32 %92, i32* %13, align 4
  br label %93

93:                                               ; preds = %85, %81
  br label %94

94:                                               ; preds = %93, %75
  br label %109

95:                                               ; preds = %71
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, 6160
  store i32 %98, i32* %96, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp sle i32 %99, 64000
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  store i32 64000, i32* %11, align 4
  store i32 8, i32* %13, align 4
  br label %108

102:                                              ; preds = %95
  %103 = load i32, i32* %10, align 4
  %104 = icmp sle i32 %103, 72000
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i32 72000, i32* %11, align 4
  store i32 7, i32* %13, align 4
  br label %107

106:                                              ; preds = %102
  store i32 96000, i32* %11, align 4
  store i32 5, i32* %13, align 4
  br label %107

107:                                              ; preds = %106, %105
  br label %108

108:                                              ; preds = %107, %101
  br label %109

109:                                              ; preds = %108, %94
  br label %121

110:                                              ; preds = %67, %57
  %111 = load i32, i32* %10, align 4
  %112 = icmp sgt i32 %111, 72000
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i32*, i32** %6, align 8
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, 2064
  store i32 %116, i32* %114, align 4
  store i32 96000, i32* %11, align 4
  br label %117

117:                                              ; preds = %113, %110
  %118 = load i32*, i32** %6, align 8
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, 16
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %117, %109
  br label %122

122:                                              ; preds = %121, %50, %39
  %123 = load i32, i32* %11, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %156

125:                                              ; preds = %122
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp sgt i32 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = load i32, i32* %11, align 4
  store i32 %130, i32* %10, align 4
  br label %131

131:                                              ; preds = %129, %125
  %132 = load i32, i32* %10, align 4
  %133 = icmp slt i32 %132, 31000
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  store i32 31000, i32* %10, align 4
  br label %135

135:                                              ; preds = %134, %131
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %10, align 4
  %138 = sub nsw i32 %136, %137
  %139 = mul nsw i32 %138, 94
  %140 = load i32, i32* %10, align 4
  %141 = sdiv i32 %139, %140
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %12, align 4
  %143 = icmp slt i32 %142, 2
  br i1 %143, label %144, label %148

144:                                              ; preds = %135
  %145 = load i32*, i32** %6, align 8
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, -17
  store i32 %147, i32* %145, align 4
  br label %151

148:                                              ; preds = %135
  %149 = load i32, i32* %12, align 4
  %150 = sub nsw i32 %149, 2
  store i32 %150, i32* %12, align 4
  br label %151

151:                                              ; preds = %148, %144
  %152 = load i32, i32* %12, align 4
  %153 = icmp sgt i32 %152, 127
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  store i32 127, i32* %12, align 4
  br label %155

155:                                              ; preds = %154, %151
  br label %156

156:                                              ; preds = %155, %122
  %157 = load i32, i32* %13, align 4
  %158 = shl i32 %157, 16
  %159 = load i32, i32* %12, align 4
  %160 = or i32 %158, %159
  %161 = load i32*, i32** %7, align 8
  store i32 %160, i32* %161, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
