; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixb.c_find_sof.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixb.c_find_sof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i64, i32, i32* }

@BRIDGE_103 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.gspca_dev*, i32*, i32)* @find_sof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_sof(%struct.gspca_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.gspca_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %12 = bitcast %struct.gspca_dev* %11 to %struct.sd*
  store %struct.sd* %12, %struct.sd** %8, align 8
  %13 = load %struct.sd*, %struct.sd** %8, align 8
  %14 = getelementptr inbounds %struct.sd, %struct.sd* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @BRIDGE_103, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 18, i32 12
  store i32 %19, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %196, %3
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %199

24:                                               ; preds = %20
  %25 = load %struct.sd*, %struct.sd** %8, align 8
  %26 = getelementptr inbounds %struct.sd, %struct.sd* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %162 [
    i32 0, label %28
    i32 1, label %41
    i32 2, label %57
    i32 3, label %81
    i32 4, label %108
    i32 5, label %135
  ]

28:                                               ; preds = %24
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 255
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load %struct.sd*, %struct.sd** %8, align 8
  %37 = getelementptr inbounds %struct.sd, %struct.sd* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %35, %28
  br label %195

41:                                               ; preds = %24
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 255
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct.sd*, %struct.sd** %8, align 8
  %50 = getelementptr inbounds %struct.sd, %struct.sd* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  br label %56

53:                                               ; preds = %41
  %54 = load %struct.sd*, %struct.sd** %8, align 8
  %55 = getelementptr inbounds %struct.sd, %struct.sd* %54, i32 0, i32 1
  store i32 0, i32* %55, align 8
  br label %56

56:                                               ; preds = %53, %48
  br label %195

57:                                               ; preds = %24
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load %struct.sd*, %struct.sd** %8, align 8
  %66 = getelementptr inbounds %struct.sd, %struct.sd* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  br label %80

69:                                               ; preds = %57
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 255
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load %struct.sd*, %struct.sd** %8, align 8
  %78 = getelementptr inbounds %struct.sd, %struct.sd* %77, i32 0, i32 1
  store i32 0, i32* %78, align 8
  br label %79

79:                                               ; preds = %76, %69
  br label %80

80:                                               ; preds = %79, %64
  br label %195

81:                                               ; preds = %24
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 196
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load %struct.sd*, %struct.sd** %8, align 8
  %90 = getelementptr inbounds %struct.sd, %struct.sd* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 8
  br label %107

93:                                               ; preds = %81
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 255
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load %struct.sd*, %struct.sd** %8, align 8
  %102 = getelementptr inbounds %struct.sd, %struct.sd* %101, i32 0, i32 1
  store i32 1, i32* %102, align 8
  br label %106

103:                                              ; preds = %93
  %104 = load %struct.sd*, %struct.sd** %8, align 8
  %105 = getelementptr inbounds %struct.sd, %struct.sd* %104, i32 0, i32 1
  store i32 0, i32* %105, align 8
  br label %106

106:                                              ; preds = %103, %100
  br label %107

107:                                              ; preds = %106, %88
  br label %195

108:                                              ; preds = %24
  %109 = load i32*, i32** %6, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 196
  br i1 %114, label %115, label %120

115:                                              ; preds = %108
  %116 = load %struct.sd*, %struct.sd** %8, align 8
  %117 = getelementptr inbounds %struct.sd, %struct.sd* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 8
  br label %134

120:                                              ; preds = %108
  %121 = load i32*, i32** %6, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %125, 255
  br i1 %126, label %127, label %130

127:                                              ; preds = %120
  %128 = load %struct.sd*, %struct.sd** %8, align 8
  %129 = getelementptr inbounds %struct.sd, %struct.sd* %128, i32 0, i32 1
  store i32 1, i32* %129, align 8
  br label %133

130:                                              ; preds = %120
  %131 = load %struct.sd*, %struct.sd** %8, align 8
  %132 = getelementptr inbounds %struct.sd, %struct.sd* %131, i32 0, i32 1
  store i32 0, i32* %132, align 8
  br label %133

133:                                              ; preds = %130, %127
  br label %134

134:                                              ; preds = %133, %115
  br label %195

135:                                              ; preds = %24
  %136 = load i32*, i32** %6, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 150
  br i1 %141, label %142, label %147

142:                                              ; preds = %135
  %143 = load %struct.sd*, %struct.sd** %8, align 8
  %144 = getelementptr inbounds %struct.sd, %struct.sd* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 8
  br label %161

147:                                              ; preds = %135
  %148 = load i32*, i32** %6, align 8
  %149 = load i32, i32* %9, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, 255
  br i1 %153, label %154, label %157

154:                                              ; preds = %147
  %155 = load %struct.sd*, %struct.sd** %8, align 8
  %156 = getelementptr inbounds %struct.sd, %struct.sd* %155, i32 0, i32 1
  store i32 1, i32* %156, align 8
  br label %160

157:                                              ; preds = %147
  %158 = load %struct.sd*, %struct.sd** %8, align 8
  %159 = getelementptr inbounds %struct.sd, %struct.sd* %158, i32 0, i32 1
  store i32 0, i32* %159, align 8
  br label %160

160:                                              ; preds = %157, %154
  br label %161

161:                                              ; preds = %160, %142
  br label %195

162:                                              ; preds = %24
  %163 = load i32*, i32** %6, align 8
  %164 = load i32, i32* %9, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.sd*, %struct.sd** %8, align 8
  %169 = getelementptr inbounds %struct.sd, %struct.sd* %168, i32 0, i32 2
  %170 = load i32*, i32** %169, align 8
  %171 = load %struct.sd*, %struct.sd** %8, align 8
  %172 = getelementptr inbounds %struct.sd, %struct.sd* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = sub nsw i32 %173, 6
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %170, i64 %175
  store i32 %167, i32* %176, align 4
  %177 = load %struct.sd*, %struct.sd** %8, align 8
  %178 = getelementptr inbounds %struct.sd, %struct.sd* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %178, align 8
  %181 = load %struct.sd*, %struct.sd** %8, align 8
  %182 = getelementptr inbounds %struct.sd, %struct.sd* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* %10, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %194

186:                                              ; preds = %162
  %187 = load %struct.sd*, %struct.sd** %8, align 8
  %188 = getelementptr inbounds %struct.sd, %struct.sd* %187, i32 0, i32 1
  store i32 0, i32* %188, align 8
  %189 = load i32*, i32** %6, align 8
  %190 = load i32, i32* %9, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = getelementptr inbounds i32, i32* %192, i64 1
  store i32* %193, i32** %4, align 8
  br label %200

194:                                              ; preds = %162
  br label %195

195:                                              ; preds = %194, %161, %134, %107, %80, %56, %40
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %9, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %9, align 4
  br label %20

199:                                              ; preds = %20
  store i32* null, i32** %4, align 8
  br label %200

200:                                              ; preds = %199, %186
  %201 = load i32*, i32** %4, align 8
  ret i32* %201
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
