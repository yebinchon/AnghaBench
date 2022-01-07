; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_phy.c_b43legacy_phy_init_tssi2dbm_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_phy.c_b43legacy_phy_init_tssi2dbm_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { i32, %struct.TYPE_6__*, %struct.b43legacy_phy }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }
%struct.b43legacy_phy = type { i32, i32, i32, i64*, i32 }

@b43legacy_tssi2dbm_b_table = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Could not allocate memory for tssi2dbm table\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Could not generate tssi2dBm table\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@b43legacy_tssi2dbm_g_table = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b43legacy_phy_init_tssi2dbm_table(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43legacy_wldev*, align 8
  %4 = alloca %struct.b43legacy_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %3, align 8
  %10 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %11 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %10, i32 0, i32 2
  store %struct.b43legacy_phy* %11, %struct.b43legacy_phy** %4, align 8
  %12 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %13 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 129
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %18 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 128
  br label %21

21:                                               ; preds = %16, %1
  %22 = phi i1 [ true, %1 ], [ %20, %16 ]
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @B43legacy_WARN_ON(i32 %24)
  %26 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %27 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %5, align 4
  %35 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %36 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %6, align 4
  %44 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %45 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %7, align 4
  %53 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %54 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 17153
  br i1 %60, label %61, label %73

61:                                               ; preds = %21
  %62 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %63 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 8272
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %68 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %67, i32 0, i32 2
  store i32 52, i32* %68, align 8
  %69 = load i8*, i8** @b43legacy_tssi2dbm_b_table, align 8
  %70 = bitcast i8* %69 to i64*
  %71 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %72 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %71, i32 0, i32 3
  store i64* %70, i64** %72, align 8
  store i32 0, i32* %2, align 4
  br label %190

73:                                               ; preds = %61, %21
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %171

76:                                               ; preds = %73
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %171

79:                                               ; preds = %76
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %171

82:                                               ; preds = %79
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, -1
  br i1 %84, label %85, label %171

85:                                               ; preds = %82
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, -1
  br i1 %87, label %88, label %171

88:                                               ; preds = %85
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, -1
  br i1 %90, label %91, label %171

91:                                               ; preds = %88
  %92 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %93 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %92, i32 0, i32 1
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %123

101:                                              ; preds = %91
  %102 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %103 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %102, i32 0, i32 1
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, -1
  br i1 %110, label %111, label %123

111:                                              ; preds = %101
  %112 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %113 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %112, i32 0, i32 1
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  %121 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %122 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  br label %126

123:                                              ; preds = %101, %91
  %124 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %125 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %124, i32 0, i32 2
  store i32 62, i32* %125, align 8
  br label %126

126:                                              ; preds = %123, %111
  %127 = load i32, i32* @GFP_KERNEL, align 4
  %128 = call i64* @kmalloc(i32 64, i32 %127)
  store i64* %128, i64** %9, align 8
  %129 = load i64*, i64** %9, align 8
  %130 = icmp eq i64* %129, null
  br i1 %130, label %131, label %138

131:                                              ; preds = %126
  %132 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %133 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @b43legacyerr(i32 %134, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %136 = load i32, i32* @ENOMEM, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %2, align 4
  br label %190

138:                                              ; preds = %126
  store i32 0, i32* %8, align 4
  br label %139

139:                                              ; preds = %162, %138
  %140 = load i32, i32* %8, align 4
  %141 = icmp slt i32 %140, 64
  br i1 %141, label %142, label %165

142:                                              ; preds = %139
  %143 = load i64*, i64** %9, align 8
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* %7, align 4
  %148 = call i64 @b43legacy_tssi2dbm_entry(i64* %143, i32 %144, i32 %145, i32 %146, i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %161

150:                                              ; preds = %142
  %151 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %152 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %151, i32 0, i32 3
  store i64* null, i64** %152, align 8
  %153 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %154 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @b43legacyerr(i32 %155, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %157 = load i64*, i64** %9, align 8
  %158 = call i32 @kfree(i64* %157)
  %159 = load i32, i32* @ENODEV, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %2, align 4
  br label %190

161:                                              ; preds = %142
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %8, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %8, align 4
  br label %139

165:                                              ; preds = %139
  %166 = load i64*, i64** %9, align 8
  %167 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %168 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %167, i32 0, i32 3
  store i64* %166, i64** %168, align 8
  %169 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %170 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %169, i32 0, i32 4
  store i32 1, i32* %170, align 8
  br label %189

171:                                              ; preds = %88, %85, %82, %79, %76, %73
  %172 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %173 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  switch i32 %174, label %188 [
    i32 129, label %175
    i32 128, label %182
  ]

175:                                              ; preds = %171
  %176 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %177 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %176, i32 0, i32 2
  store i32 52, i32* %177, align 8
  %178 = load i8*, i8** @b43legacy_tssi2dbm_b_table, align 8
  %179 = bitcast i8* %178 to i64*
  %180 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %181 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %180, i32 0, i32 3
  store i64* %179, i64** %181, align 8
  br label %188

182:                                              ; preds = %171
  %183 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %184 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %183, i32 0, i32 2
  store i32 52, i32* %184, align 8
  %185 = load i64*, i64** @b43legacy_tssi2dbm_g_table, align 8
  %186 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %187 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %186, i32 0, i32 3
  store i64* %185, i64** %187, align 8
  br label %188

188:                                              ; preds = %171, %182, %175
  br label %189

189:                                              ; preds = %188, %165
  store i32 0, i32* %2, align 4
  br label %190

190:                                              ; preds = %189, %150, %131, %66
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i64* @kmalloc(i32, i32) #1

declare dso_local i32 @b43legacyerr(i32, i8*) #1

declare dso_local i64 @b43legacy_tssi2dbm_entry(i64*, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
