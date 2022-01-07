; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fid_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fid_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_fid = type { %struct.mlxsw_sp_fid_family*, i32, i32, i32, i64 }
%struct.mlxsw_sp_fid_family = type { i32, i64, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.mlxsw_sp_fid*, i8*, i64*)*, i32 (%struct.mlxsw_sp_fid*)*, i32 (%struct.mlxsw_sp_fid*)*, i32 (%struct.mlxsw_sp_fid*, i8*)* }
%struct.mlxsw_sp = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.mlxsw_sp_fid_family** }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mlxsw_sp_fid_ht_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_fid* (%struct.mlxsw_sp*, i32, i8*)* @mlxsw_sp_fid_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_fid* @mlxsw_sp_fid_get(%struct.mlxsw_sp* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mlxsw_sp_fid*, align 8
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mlxsw_sp_fid_family*, align 8
  %9 = alloca %struct.mlxsw_sp_fid*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = call %struct.mlxsw_sp_fid* @mlxsw_sp_fid_lookup(%struct.mlxsw_sp* %12, i32 %13, i8* %14)
  store %struct.mlxsw_sp_fid* %15, %struct.mlxsw_sp_fid** %9, align 8
  %16 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %9, align 8
  %17 = icmp ne %struct.mlxsw_sp_fid* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %9, align 8
  store %struct.mlxsw_sp_fid* %19, %struct.mlxsw_sp_fid** %4, align 8
  br label %151

20:                                               ; preds = %3
  %21 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load %struct.mlxsw_sp_fid_family**, %struct.mlxsw_sp_fid_family*** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %25, i64 %27
  %29 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %28, align 8
  store %struct.mlxsw_sp_fid_family* %29, %struct.mlxsw_sp_fid_family** %8, align 8
  %30 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %8, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.mlxsw_sp_fid* @kzalloc(i32 %32, i32 %33)
  store %struct.mlxsw_sp_fid* %34, %struct.mlxsw_sp_fid** %9, align 8
  %35 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %9, align 8
  %36 = icmp ne %struct.mlxsw_sp_fid* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %20
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  %40 = call %struct.mlxsw_sp_fid* @ERR_PTR(i32 %39)
  store %struct.mlxsw_sp_fid* %40, %struct.mlxsw_sp_fid** %4, align 8
  br label %151

41:                                               ; preds = %20
  %42 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %8, align 8
  %43 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %9, align 8
  %44 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %43, i32 0, i32 0
  store %struct.mlxsw_sp_fid_family* %42, %struct.mlxsw_sp_fid_family** %44, align 8
  %45 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %9, align 8
  %46 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %45, i32 0, i32 0
  %47 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %46, align 8
  %48 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %47, i32 0, i32 2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32 (%struct.mlxsw_sp_fid*, i8*, i64*)*, i32 (%struct.mlxsw_sp_fid*, i8*, i64*)** %50, align 8
  %52 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %9, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 %51(%struct.mlxsw_sp_fid* %52, i8* %53, i64* %10)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %41
  br label %146

58:                                               ; preds = %41
  %59 = load i64, i64* %10, align 8
  %60 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %9, align 8
  %61 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %60, i32 0, i32 4
  store i64 %59, i64* %61, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %8, align 8
  %64 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %62, %65
  %67 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %8, align 8
  %68 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @__set_bit(i64 %66, i32 %69)
  %71 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %9, align 8
  %72 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %71, i32 0, i32 0
  %73 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %72, align 8
  %74 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %73, i32 0, i32 2
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  %77 = load i32 (%struct.mlxsw_sp_fid*, i8*)*, i32 (%struct.mlxsw_sp_fid*, i8*)** %76, align 8
  %78 = icmp ne i32 (%struct.mlxsw_sp_fid*, i8*)* %77, null
  br i1 %78, label %79, label %90

79:                                               ; preds = %58
  %80 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %9, align 8
  %81 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %80, i32 0, i32 0
  %82 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %81, align 8
  %83 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %82, i32 0, i32 2
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  %86 = load i32 (%struct.mlxsw_sp_fid*, i8*)*, i32 (%struct.mlxsw_sp_fid*, i8*)** %85, align 8
  %87 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %9, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 %86(%struct.mlxsw_sp_fid* %87, i8* %88)
  br label %90

90:                                               ; preds = %79, %58
  %91 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %9, align 8
  %92 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %91, i32 0, i32 0
  %93 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %92, align 8
  %94 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %93, i32 0, i32 2
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32 (%struct.mlxsw_sp_fid*)*, i32 (%struct.mlxsw_sp_fid*)** %96, align 8
  %98 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %9, align 8
  %99 = call i32 %97(%struct.mlxsw_sp_fid* %98)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %90
  br label %136

103:                                              ; preds = %90
  %104 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %105 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %104, i32 0, i32 0
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %9, align 8
  %109 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %108, i32 0, i32 3
  %110 = load i32, i32* @mlxsw_sp_fid_ht_params, align 4
  %111 = call i32 @rhashtable_insert_fast(i32* %107, i32* %109, i32 %110)
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %103
  br label %126

115:                                              ; preds = %103
  %116 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %9, align 8
  %117 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %116, i32 0, i32 2
  %118 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %8, align 8
  %119 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %118, i32 0, i32 3
  %120 = call i32 @list_add(i32* %117, i32* %119)
  %121 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %9, align 8
  %122 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 8
  %125 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %9, align 8
  store %struct.mlxsw_sp_fid* %125, %struct.mlxsw_sp_fid** %4, align 8
  br label %151

126:                                              ; preds = %114
  %127 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %9, align 8
  %128 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %127, i32 0, i32 0
  %129 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %128, align 8
  %130 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %129, i32 0, i32 2
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 2
  %133 = load i32 (%struct.mlxsw_sp_fid*)*, i32 (%struct.mlxsw_sp_fid*)** %132, align 8
  %134 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %9, align 8
  %135 = call i32 %133(%struct.mlxsw_sp_fid* %134)
  br label %136

136:                                              ; preds = %126, %102
  %137 = load i64, i64* %10, align 8
  %138 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %8, align 8
  %139 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = sub nsw i64 %137, %140
  %142 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %8, align 8
  %143 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @__clear_bit(i64 %141, i32 %144)
  br label %146

146:                                              ; preds = %136, %57
  %147 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %9, align 8
  %148 = call i32 @kfree(%struct.mlxsw_sp_fid* %147)
  %149 = load i32, i32* %11, align 4
  %150 = call %struct.mlxsw_sp_fid* @ERR_PTR(i32 %149)
  store %struct.mlxsw_sp_fid* %150, %struct.mlxsw_sp_fid** %4, align 8
  br label %151

151:                                              ; preds = %146, %115, %37, %18
  %152 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %4, align 8
  ret %struct.mlxsw_sp_fid* %152
}

declare dso_local %struct.mlxsw_sp_fid* @mlxsw_sp_fid_lookup(%struct.mlxsw_sp*, i32, i8*) #1

declare dso_local %struct.mlxsw_sp_fid* @kzalloc(i32, i32) #1

declare dso_local %struct.mlxsw_sp_fid* @ERR_PTR(i32) #1

declare dso_local i32 @__set_bit(i64, i32) #1

declare dso_local i32 @rhashtable_insert_fast(i32*, i32*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @__clear_bit(i64, i32) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_fid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
