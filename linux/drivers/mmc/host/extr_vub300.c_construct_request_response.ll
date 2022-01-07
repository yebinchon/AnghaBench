; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c_construct_request_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c_construct_request_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vub300_mmc_host = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.mmc_command = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vub300_mmc_host*, %struct.mmc_command*)* @construct_request_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @construct_request_response(%struct.vub300_mmc_host* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca %struct.vub300_mmc_host*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.vub300_mmc_host* %0, %struct.vub300_mmc_host** %3, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %4, align 8
  %10 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %11 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 17, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  br label %20

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = sub nsw i32 %18, 1
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi i32 [ %16, %15 ], [ %19, %17 ]
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = and i32 3, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = ashr i32 %24, 2
  store i32 %25, i32* %8, align 4
  %26 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %27 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %9, align 8
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 3
  br i1 %32, label %33, label %66

33:                                               ; preds = %20
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %8, align 4
  %36 = shl i32 %35, 2
  %37 = add nsw i32 1, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %34, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 24
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %8, align 4
  %44 = shl i32 %43, 2
  %45 = add nsw i32 2, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 16
  %50 = or i32 %41, %49
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %8, align 4
  %53 = shl i32 %52, 2
  %54 = add nsw i32 3, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 8
  %59 = or i32 %50, %58
  %60 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %61 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %59, i32* %65, align 4
  br label %113

66:                                               ; preds = %20
  %67 = load i32, i32* %7, align 4
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %69, label %93

69:                                               ; preds = %66
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %8, align 4
  %72 = shl i32 %71, 2
  %73 = add nsw i32 1, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %70, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 24
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %8, align 4
  %80 = shl i32 %79, 2
  %81 = add nsw i32 2, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %78, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 16
  %86 = or i32 %77, %85
  %87 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %88 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %86, i32* %92, align 4
  br label %112

93:                                               ; preds = %66
  %94 = load i32, i32* %7, align 4
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %111

96:                                               ; preds = %93
  %97 = load i32*, i32** %9, align 8
  %98 = load i32, i32* %8, align 4
  %99 = shl i32 %98, 2
  %100 = add nsw i32 1, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %97, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = shl i32 %103, 24
  %105 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %106 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 %104, i32* %110, align 4
  br label %111

111:                                              ; preds = %96, %93
  br label %112

112:                                              ; preds = %111, %69
  br label %113

113:                                              ; preds = %112, %33
  br label %114

114:                                              ; preds = %118, %113
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %8, align 4
  %117 = icmp sgt i32 %115, 0
  br i1 %117, label %118, label %160

118:                                              ; preds = %114
  %119 = load i32*, i32** %9, align 8
  %120 = load i32, i32* %8, align 4
  %121 = shl i32 %120, 2
  %122 = add nsw i32 1, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %119, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = shl i32 %125, 24
  %127 = load i32*, i32** %9, align 8
  %128 = load i32, i32* %8, align 4
  %129 = shl i32 %128, 2
  %130 = add nsw i32 2, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %127, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = shl i32 %133, 16
  %135 = or i32 %126, %134
  %136 = load i32*, i32** %9, align 8
  %137 = load i32, i32* %8, align 4
  %138 = shl i32 %137, 2
  %139 = add nsw i32 3, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %136, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = shl i32 %142, 8
  %144 = or i32 %135, %143
  %145 = load i32*, i32** %9, align 8
  %146 = load i32, i32* %8, align 4
  %147 = shl i32 %146, 2
  %148 = add nsw i32 4, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %145, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = shl i32 %151, 0
  %153 = or i32 %144, %152
  %154 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %155 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %8, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  store i32 %153, i32* %159, align 4
  br label %114

160:                                              ; preds = %114
  %161 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %162 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = icmp eq i32 %163, 53
  br i1 %164, label %165, label %180

165:                                              ; preds = %160
  %166 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %167 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = and i32 255, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %165
  %174 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %175 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = and i32 %178, -256
  store i32 %179, i32* %177, align 4
  br label %180

180:                                              ; preds = %173, %165, %160
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
