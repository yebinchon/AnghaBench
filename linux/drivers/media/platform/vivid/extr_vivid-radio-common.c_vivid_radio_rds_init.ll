; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-radio-common.c_vivid_radio_rds_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-radio-common.c_vivid_radio_rds_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivid_dev = type { i32, i64, i32, i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_37__*, %struct.TYPE_36__*, %struct.TYPE_33__*, %struct.TYPE_31__*, %struct.TYPE_29__*, %struct.TYPE_27__*, %struct.TYPE_25__*, %struct.TYPE_45__*, %struct.TYPE_43__*, %struct.TYPE_41__*, %struct.TYPE_39__*, i32, %struct.vivid_rds_gen }
%struct.TYPE_37__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_36__ = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i64 }
%struct.TYPE_33__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_31__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_45__ = type { %struct.TYPE_44__ }
%struct.TYPE_44__ = type { i32 }
%struct.TYPE_43__ = type { %struct.TYPE_42__ }
%struct.TYPE_42__ = type { i32 }
%struct.TYPE_41__ = type { %struct.TYPE_40__ }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_39__ = type { %struct.TYPE_38__ }
%struct.TYPE_38__ = type { i32 }
%struct.vivid_rds_gen = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vivid_radio_rds_init(%struct.vivid_dev* %0) #0 {
  %2 = alloca %struct.vivid_dev*, align 8
  %3 = alloca %struct.vivid_rds_gen*, align 8
  %4 = alloca i32, align 4
  store %struct.vivid_dev* %0, %struct.vivid_dev** %2, align 8
  %5 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %6 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %5, i32 0, i32 22
  store %struct.vivid_rds_gen* %6, %struct.vivid_rds_gen** %3, align 8
  %7 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %8 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %11 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %16 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %15, i32 0, i32 21
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %202

20:                                               ; preds = %14, %1
  %21 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %22 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %130

25:                                               ; preds = %20
  %26 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %27 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %26, i32 0, i32 10
  %28 = load %struct.TYPE_37__*, %struct.TYPE_37__** %27, align 8
  %29 = call i32 @v4l2_ctrl_lock(%struct.TYPE_37__* %28)
  %30 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %31 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %30, i32 0, i32 10
  %32 = load %struct.TYPE_37__*, %struct.TYPE_37__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.vivid_rds_gen*, %struct.vivid_rds_gen** %3, align 8
  %37 = getelementptr inbounds %struct.vivid_rds_gen, %struct.vivid_rds_gen* %36, i32 0, i32 10
  store i32 %35, i32* %37, align 4
  %38 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %39 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %38, i32 0, i32 20
  %40 = load %struct.TYPE_39__*, %struct.TYPE_39__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.vivid_rds_gen*, %struct.vivid_rds_gen** %3, align 8
  %45 = getelementptr inbounds %struct.vivid_rds_gen, %struct.vivid_rds_gen* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 4
  %46 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %47 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %46, i32 0, i32 19
  %48 = load %struct.TYPE_41__*, %struct.TYPE_41__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.vivid_rds_gen*, %struct.vivid_rds_gen** %3, align 8
  %53 = getelementptr inbounds %struct.vivid_rds_gen, %struct.vivid_rds_gen* %52, i32 0, i32 9
  store i32 %51, i32* %53, align 4
  %54 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %55 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %54, i32 0, i32 18
  %56 = load %struct.TYPE_43__*, %struct.TYPE_43__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.vivid_rds_gen*, %struct.vivid_rds_gen** %3, align 8
  %61 = getelementptr inbounds %struct.vivid_rds_gen, %struct.vivid_rds_gen* %60, i32 0, i32 8
  store i32 %59, i32* %61, align 4
  %62 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %63 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %62, i32 0, i32 17
  %64 = load %struct.TYPE_45__*, %struct.TYPE_45__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.vivid_rds_gen*, %struct.vivid_rds_gen** %3, align 8
  %69 = getelementptr inbounds %struct.vivid_rds_gen, %struct.vivid_rds_gen* %68, i32 0, i32 7
  store i32 %67, i32* %69, align 4
  %70 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %71 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %70, i32 0, i32 16
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.vivid_rds_gen*, %struct.vivid_rds_gen** %3, align 8
  %77 = getelementptr inbounds %struct.vivid_rds_gen, %struct.vivid_rds_gen* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 4
  %78 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %79 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %78, i32 0, i32 15
  %80 = load %struct.TYPE_27__*, %struct.TYPE_27__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.vivid_rds_gen*, %struct.vivid_rds_gen** %3, align 8
  %85 = getelementptr inbounds %struct.vivid_rds_gen, %struct.vivid_rds_gen* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 4
  %86 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %87 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %86, i32 0, i32 14
  %88 = load %struct.TYPE_29__*, %struct.TYPE_29__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.vivid_rds_gen*, %struct.vivid_rds_gen** %3, align 8
  %93 = getelementptr inbounds %struct.vivid_rds_gen, %struct.vivid_rds_gen* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  %94 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %95 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %94, i32 0, i32 13
  %96 = load %struct.TYPE_31__*, %struct.TYPE_31__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.vivid_rds_gen*, %struct.vivid_rds_gen** %3, align 8
  %101 = getelementptr inbounds %struct.vivid_rds_gen, %struct.vivid_rds_gen* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  %102 = load %struct.vivid_rds_gen*, %struct.vivid_rds_gen** %3, align 8
  %103 = getelementptr inbounds %struct.vivid_rds_gen, %struct.vivid_rds_gen* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %106 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %105, i32 0, i32 12
  %107 = load %struct.TYPE_33__*, %struct.TYPE_33__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @strscpy(i32 %104, i64 %110, i32 4)
  %112 = load %struct.vivid_rds_gen*, %struct.vivid_rds_gen** %3, align 8
  %113 = getelementptr inbounds %struct.vivid_rds_gen, %struct.vivid_rds_gen* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %116 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %115, i32 0, i32 11
  %117 = load %struct.TYPE_36__*, %struct.TYPE_36__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* %4, align 4
  %122 = mul nsw i32 %121, 64
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %120, %123
  %125 = call i32 @strscpy(i32 %114, i64 %124, i32 4)
  %126 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %127 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %126, i32 0, i32 10
  %128 = load %struct.TYPE_37__*, %struct.TYPE_37__** %127, align 8
  %129 = call i32 @v4l2_ctrl_unlock(%struct.TYPE_37__* %128)
  br label %137

130:                                              ; preds = %20
  %131 = load %struct.vivid_rds_gen*, %struct.vivid_rds_gen** %3, align 8
  %132 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %133 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %132, i32 0, i32 9
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %4, align 4
  %136 = call i32 @vivid_rds_gen_fill(%struct.vivid_rds_gen* %131, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %130, %25
  %138 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %139 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %138, i32 0, i32 8
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %199

142:                                              ; preds = %137
  %143 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %144 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %143, i32 0, i32 7
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.vivid_rds_gen*, %struct.vivid_rds_gen** %3, align 8
  %147 = getelementptr inbounds %struct.vivid_rds_gen, %struct.vivid_rds_gen* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @v4l2_ctrl_s_ctrl(i32 %145, i32 %148)
  %150 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %151 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %150, i32 0, i32 6
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.vivid_rds_gen*, %struct.vivid_rds_gen** %3, align 8
  %154 = getelementptr inbounds %struct.vivid_rds_gen, %struct.vivid_rds_gen* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @v4l2_ctrl_s_ctrl(i32 %152, i32 %155)
  %157 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %158 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.vivid_rds_gen*, %struct.vivid_rds_gen** %3, align 8
  %161 = getelementptr inbounds %struct.vivid_rds_gen, %struct.vivid_rds_gen* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @v4l2_ctrl_s_ctrl(i32 %159, i32 %162)
  %164 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %165 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.vivid_rds_gen*, %struct.vivid_rds_gen** %3, align 8
  %168 = getelementptr inbounds %struct.vivid_rds_gen, %struct.vivid_rds_gen* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @v4l2_ctrl_s_ctrl(i32 %166, i32 %169)
  %171 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %172 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.vivid_rds_gen*, %struct.vivid_rds_gen** %3, align 8
  %175 = getelementptr inbounds %struct.vivid_rds_gen, %struct.vivid_rds_gen* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @v4l2_ctrl_s_ctrl_string(i32 %173, i32 %176)
  %178 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %179 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.vivid_rds_gen*, %struct.vivid_rds_gen** %3, align 8
  %182 = getelementptr inbounds %struct.vivid_rds_gen, %struct.vivid_rds_gen* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @v4l2_ctrl_s_ctrl_string(i32 %180, i32 %183)
  %185 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %186 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %198, label %189

189:                                              ; preds = %142
  %190 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %191 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = icmp ne i32 %192, 0
  %194 = xor i1 %193, true
  %195 = zext i1 %194 to i32
  %196 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %197 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 8
  br label %198

198:                                              ; preds = %189, %142
  br label %199

199:                                              ; preds = %198, %137
  %200 = load %struct.vivid_rds_gen*, %struct.vivid_rds_gen** %3, align 8
  %201 = call i32 @vivid_rds_generate(%struct.vivid_rds_gen* %200)
  br label %202

202:                                              ; preds = %199, %19
  ret void
}

declare dso_local i32 @v4l2_ctrl_lock(%struct.TYPE_37__*) #1

declare dso_local i32 @strscpy(i32, i64, i32) #1

declare dso_local i32 @v4l2_ctrl_unlock(%struct.TYPE_37__*) #1

declare dso_local i32 @vivid_rds_gen_fill(%struct.vivid_rds_gen*, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_s_ctrl(i32, i32) #1

declare dso_local i32 @v4l2_ctrl_s_ctrl_string(i32, i32) #1

declare dso_local i32 @vivid_rds_generate(%struct.vivid_rds_gen*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
