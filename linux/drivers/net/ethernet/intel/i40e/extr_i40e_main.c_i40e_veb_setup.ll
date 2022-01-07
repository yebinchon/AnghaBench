; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_veb_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_veb_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_veb = type { i64, i32, i32, i32, i64, i64 }
%struct.i40e_pf = type { i32, i64, i32, i32, %struct.TYPE_4__**, %struct.i40e_veb**, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"one, not both seid's are 0: uplink=%d vsi=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"vsi seid %d not found\0A\00", align 1
@I40E_MAX_VEB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"uplink seid %d not found\0A\00", align 1
@I40E_NO_VEB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i40e_veb* @i40e_veb_setup(%struct.i40e_pf* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.i40e_veb*, align 8
  %7 = alloca %struct.i40e_pf*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.i40e_veb*, align 8
  %13 = alloca %struct.i40e_veb*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.i40e_veb* null, %struct.i40e_veb** %13, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i64, i64* %10, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %19, %5
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = add nsw i64 %23, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %29 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %28, i32 0, i32 6
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i32 (i32*, i8*, i64, ...) @dev_info(i32* %31, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %32, i64 %33)
  store %struct.i40e_veb* null, %struct.i40e_veb** %6, align 8
  br label %213

35:                                               ; preds = %22, %19
  store i32 0, i32* %14, align 4
  br label %36

36:                                               ; preds = %65, %35
  %37 = load i32, i32* %14, align 4
  %38 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %39 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %36
  %43 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %44 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %43, i32 0, i32 4
  %45 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %44, align 8
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %45, i64 %47
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = icmp ne %struct.TYPE_4__* %49, null
  br i1 %50, label %51, label %64

51:                                               ; preds = %42
  %52 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %53 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %52, i32 0, i32 4
  %54 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %53, align 8
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %54, i64 %56
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %10, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  br label %68

64:                                               ; preds = %51, %42
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %14, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %14, align 4
  br label %36

68:                                               ; preds = %63, %36
  %69 = load i32, i32* %14, align 4
  %70 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %71 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %69, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %68
  %75 = load i64, i64* %10, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %79 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %78, i32 0, i32 6
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i64, i64* %10, align 8
  %83 = call i32 (i32*, i8*, i64, ...) @dev_info(i32* %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %82)
  store %struct.i40e_veb* null, %struct.i40e_veb** %6, align 8
  br label %213

84:                                               ; preds = %74, %68
  %85 = load i64, i64* %9, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %142

87:                                               ; preds = %84
  %88 = load i64, i64* %9, align 8
  %89 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %90 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %88, %91
  br i1 %92, label %93, label %142

93:                                               ; preds = %87
  store i32 0, i32* %15, align 4
  br label %94

94:                                               ; preds = %128, %93
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* @I40E_MAX_VEB, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %131

98:                                               ; preds = %94
  %99 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %100 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %99, i32 0, i32 5
  %101 = load %struct.i40e_veb**, %struct.i40e_veb*** %100, align 8
  %102 = load i32, i32* %15, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.i40e_veb*, %struct.i40e_veb** %101, i64 %103
  %105 = load %struct.i40e_veb*, %struct.i40e_veb** %104, align 8
  %106 = icmp ne %struct.i40e_veb* %105, null
  br i1 %106, label %107, label %127

107:                                              ; preds = %98
  %108 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %109 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %108, i32 0, i32 5
  %110 = load %struct.i40e_veb**, %struct.i40e_veb*** %109, align 8
  %111 = load i32, i32* %15, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.i40e_veb*, %struct.i40e_veb** %110, i64 %112
  %114 = load %struct.i40e_veb*, %struct.i40e_veb** %113, align 8
  %115 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %9, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %107
  %120 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %121 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %120, i32 0, i32 5
  %122 = load %struct.i40e_veb**, %struct.i40e_veb*** %121, align 8
  %123 = load i32, i32* %15, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.i40e_veb*, %struct.i40e_veb** %122, i64 %124
  %126 = load %struct.i40e_veb*, %struct.i40e_veb** %125, align 8
  store %struct.i40e_veb* %126, %struct.i40e_veb** %13, align 8
  br label %131

127:                                              ; preds = %107, %98
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %15, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %15, align 4
  br label %94

131:                                              ; preds = %119, %94
  %132 = load %struct.i40e_veb*, %struct.i40e_veb** %13, align 8
  %133 = icmp ne %struct.i40e_veb* %132, null
  br i1 %133, label %141, label %134

134:                                              ; preds = %131
  %135 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %136 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %135, i32 0, i32 6
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i64, i64* %9, align 8
  %140 = call i32 (i32*, i8*, i64, ...) @dev_info(i32* %138, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %139)
  store %struct.i40e_veb* null, %struct.i40e_veb** %6, align 8
  br label %213

141:                                              ; preds = %131
  br label %142

142:                                              ; preds = %141, %87, %84
  %143 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %144 = call i32 @i40e_veb_mem_alloc(%struct.i40e_pf* %143)
  store i32 %144, i32* %15, align 4
  %145 = load i32, i32* %15, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  br label %212

148:                                              ; preds = %142
  %149 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %150 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %149, i32 0, i32 5
  %151 = load %struct.i40e_veb**, %struct.i40e_veb*** %150, align 8
  %152 = load i32, i32* %15, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.i40e_veb*, %struct.i40e_veb** %151, i64 %153
  %155 = load %struct.i40e_veb*, %struct.i40e_veb** %154, align 8
  store %struct.i40e_veb* %155, %struct.i40e_veb** %12, align 8
  %156 = load i64, i64* %8, align 8
  %157 = load %struct.i40e_veb*, %struct.i40e_veb** %12, align 8
  %158 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %157, i32 0, i32 5
  store i64 %156, i64* %158, align 8
  %159 = load i64, i64* %9, align 8
  %160 = load %struct.i40e_veb*, %struct.i40e_veb** %12, align 8
  %161 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %160, i32 0, i32 4
  store i64 %159, i64* %161, align 8
  %162 = load %struct.i40e_veb*, %struct.i40e_veb** %13, align 8
  %163 = icmp ne %struct.i40e_veb* %162, null
  br i1 %163, label %164, label %168

164:                                              ; preds = %148
  %165 = load %struct.i40e_veb*, %struct.i40e_veb** %13, align 8
  %166 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  br label %170

168:                                              ; preds = %148
  %169 = load i32, i32* @I40E_NO_VEB, align 4
  br label %170

170:                                              ; preds = %168, %164
  %171 = phi i32 [ %167, %164 ], [ %169, %168 ]
  %172 = load %struct.i40e_veb*, %struct.i40e_veb** %12, align 8
  %173 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %172, i32 0, i32 3
  store i32 %171, i32* %173, align 8
  %174 = load i32, i32* %11, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %170
  %177 = load i32, i32* %11, align 4
  br label %179

178:                                              ; preds = %170
  br label %179

179:                                              ; preds = %178, %176
  %180 = phi i32 [ %177, %176 ], [ 1, %178 ]
  %181 = load %struct.i40e_veb*, %struct.i40e_veb** %12, align 8
  %182 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 8
  %183 = load %struct.i40e_veb*, %struct.i40e_veb** %12, align 8
  %184 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %185 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %184, i32 0, i32 4
  %186 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %185, align 8
  %187 = load i32, i32* %14, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %186, i64 %188
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %189, align 8
  %191 = call i32 @i40e_add_veb(%struct.i40e_veb* %183, %struct.TYPE_4__* %190)
  store i32 %191, i32* %16, align 4
  %192 = load i32, i32* %16, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %179
  br label %209

195:                                              ; preds = %179
  %196 = load i32, i32* %14, align 4
  %197 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %198 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = icmp eq i32 %196, %199
  br i1 %200, label %201, label %207

201:                                              ; preds = %195
  %202 = load %struct.i40e_veb*, %struct.i40e_veb** %12, align 8
  %203 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %206 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %205, i32 0, i32 3
  store i32 %204, i32* %206, align 4
  br label %207

207:                                              ; preds = %201, %195
  %208 = load %struct.i40e_veb*, %struct.i40e_veb** %12, align 8
  store %struct.i40e_veb* %208, %struct.i40e_veb** %6, align 8
  br label %213

209:                                              ; preds = %194
  %210 = load %struct.i40e_veb*, %struct.i40e_veb** %12, align 8
  %211 = call i32 @i40e_veb_clear(%struct.i40e_veb* %210)
  br label %212

212:                                              ; preds = %209, %147
  store %struct.i40e_veb* null, %struct.i40e_veb** %6, align 8
  br label %213

213:                                              ; preds = %212, %207, %134, %77, %27
  %214 = load %struct.i40e_veb*, %struct.i40e_veb** %6, align 8
  ret %struct.i40e_veb* %214
}

declare dso_local i32 @dev_info(i32*, i8*, i64, ...) #1

declare dso_local i32 @i40e_veb_mem_alloc(%struct.i40e_pf*) #1

declare dso_local i32 @i40e_add_veb(%struct.i40e_veb*, %struct.TYPE_4__*) #1

declare dso_local i32 @i40e_veb_clear(%struct.i40e_veb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
