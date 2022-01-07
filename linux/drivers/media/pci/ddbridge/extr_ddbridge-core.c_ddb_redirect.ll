; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_redirect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb = type { %struct.ddb_input*, %struct.ddb_port*, i32 }
%struct.ddb_input = type { %struct.TYPE_7__*, %struct.TYPE_5__*, %struct.TYPE_6__*, %struct.ddb_input* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_8__*, %struct.ddb_input* }
%struct.TYPE_8__ = type { i64 }
%struct.ddb_port = type { %struct.TYPE_6__*, %struct.ddb_input** }

@ddbs = common dso_local global %struct.ddb** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@redirect_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ddb_redirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddb_redirect(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ddb*, align 8
  %7 = alloca %struct.ddb_input*, align 8
  %8 = alloca %struct.ddb_input*, align 8
  %9 = alloca %struct.ddb*, align 8
  %10 = alloca %struct.ddb_port*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ddb**, %struct.ddb*** @ddbs, align 8
  %12 = load i32, i32* %4, align 4
  %13 = ashr i32 %12, 4
  %14 = and i32 %13, 63
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ddb*, %struct.ddb** %11, i64 %15
  %17 = load %struct.ddb*, %struct.ddb** %16, align 8
  store %struct.ddb* %17, %struct.ddb** %6, align 8
  %18 = load %struct.ddb**, %struct.ddb*** @ddbs, align 8
  %19 = load i32, i32* %5, align 4
  %20 = ashr i32 %19, 4
  %21 = and i32 %20, 63
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ddb*, %struct.ddb** %18, i64 %22
  %24 = load %struct.ddb*, %struct.ddb** %23, align 8
  store %struct.ddb* %24, %struct.ddb** %9, align 8
  %25 = load %struct.ddb*, %struct.ddb** %6, align 8
  %26 = icmp ne %struct.ddb* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load %struct.ddb*, %struct.ddb** %9, align 8
  %29 = icmp ne %struct.ddb* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27, %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %158

33:                                               ; preds = %27
  %34 = load %struct.ddb*, %struct.ddb** %6, align 8
  %35 = getelementptr inbounds %struct.ddb, %struct.ddb* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.ddb*, %struct.ddb** %9, align 8
  %40 = getelementptr inbounds %struct.ddb, %struct.ddb* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38, %33
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %158

46:                                               ; preds = %38
  %47 = load %struct.ddb*, %struct.ddb** %9, align 8
  %48 = getelementptr inbounds %struct.ddb, %struct.ddb* %47, i32 0, i32 1
  %49 = load %struct.ddb_port*, %struct.ddb_port** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, 15
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %49, i64 %52
  store %struct.ddb_port* %53, %struct.ddb_port** %10, align 8
  %54 = load %struct.ddb_port*, %struct.ddb_port** %10, align 8
  %55 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = icmp ne %struct.TYPE_6__* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %46
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %158

61:                                               ; preds = %46
  %62 = load %struct.ddb_port*, %struct.ddb_port** %10, align 8
  %63 = call i64 @ddb_unredirect(%struct.ddb_port* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* @EBUSY, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %158

68:                                               ; preds = %61
  %69 = load i32, i32* %4, align 4
  %70 = icmp eq i32 %69, 8
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %158

72:                                               ; preds = %68
  %73 = load %struct.ddb*, %struct.ddb** %6, align 8
  %74 = getelementptr inbounds %struct.ddb, %struct.ddb* %73, i32 0, i32 0
  %75 = load %struct.ddb_input*, %struct.ddb_input** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = and i32 %76, 7
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %75, i64 %78
  store %struct.ddb_input* %79, %struct.ddb_input** %7, align 8
  %80 = load %struct.ddb_input*, %struct.ddb_input** %7, align 8
  %81 = icmp ne %struct.ddb_input* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %72
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %158

85:                                               ; preds = %72
  %86 = call i32 @mutex_lock(i32* @redirect_lock)
  %87 = load %struct.ddb_port*, %struct.ddb_port** %10, align 8
  %88 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %85
  %96 = load %struct.ddb_input*, %struct.ddb_input** %7, align 8
  %97 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %96, i32 0, i32 0
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %95, %85
  %103 = call i32 @mutex_unlock(i32* @redirect_lock)
  %104 = load i32, i32* @EBUSY, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %3, align 4
  br label %158

106:                                              ; preds = %95
  %107 = load %struct.ddb_port*, %struct.ddb_port** %10, align 8
  %108 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %107, i32 0, i32 1
  %109 = load %struct.ddb_input**, %struct.ddb_input*** %108, align 8
  %110 = getelementptr inbounds %struct.ddb_input*, %struct.ddb_input** %109, i64 0
  %111 = load %struct.ddb_input*, %struct.ddb_input** %110, align 8
  store %struct.ddb_input* %111, %struct.ddb_input** %8, align 8
  %112 = load %struct.ddb_input*, %struct.ddb_input** %8, align 8
  %113 = icmp ne %struct.ddb_input* %112, null
  br i1 %113, label %114, label %132

114:                                              ; preds = %106
  %115 = load %struct.ddb_input*, %struct.ddb_input** %7, align 8
  %116 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %115, i32 0, i32 3
  %117 = load %struct.ddb_input*, %struct.ddb_input** %116, align 8
  %118 = icmp ne %struct.ddb_input* %117, null
  br i1 %118, label %119, label %127

119:                                              ; preds = %114
  %120 = load %struct.ddb_input*, %struct.ddb_input** %7, align 8
  %121 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %120, i32 0, i32 3
  %122 = load %struct.ddb_input*, %struct.ddb_input** %121, align 8
  %123 = load %struct.ddb_input*, %struct.ddb_input** %8, align 8
  %124 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %123, i32 0, i32 3
  store %struct.ddb_input* %122, %struct.ddb_input** %124, align 8
  %125 = load %struct.ddb_input*, %struct.ddb_input** %7, align 8
  %126 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %125, i32 0, i32 3
  store %struct.ddb_input* null, %struct.ddb_input** %126, align 8
  br label %131

127:                                              ; preds = %114
  %128 = load %struct.ddb_input*, %struct.ddb_input** %7, align 8
  %129 = load %struct.ddb_input*, %struct.ddb_input** %8, align 8
  %130 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %129, i32 0, i32 3
  store %struct.ddb_input* %128, %struct.ddb_input** %130, align 8
  br label %131

131:                                              ; preds = %127, %119
  br label %132

132:                                              ; preds = %131, %106
  %133 = load %struct.ddb_port*, %struct.ddb_port** %10, align 8
  %134 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %133, i32 0, i32 0
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = load %struct.ddb_input*, %struct.ddb_input** %7, align 8
  %137 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %136, i32 0, i32 2
  store %struct.TYPE_6__* %135, %struct.TYPE_6__** %137, align 8
  %138 = load %struct.ddb_input*, %struct.ddb_input** %7, align 8
  %139 = load %struct.ddb_port*, %struct.ddb_port** %10, align 8
  %140 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %139, i32 0, i32 0
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  store %struct.ddb_input* %138, %struct.ddb_input** %142, align 8
  %143 = load %struct.ddb_input*, %struct.ddb_input** %7, align 8
  %144 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %143, i32 0, i32 1
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.ddb_input*, %struct.ddb_input** %7, align 8
  %149 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %148, i32 0, i32 0
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %149, align 8
  %151 = load %struct.ddb_port*, %struct.ddb_port** %10, align 8
  %152 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %151, i32 0, i32 0
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = call i32 @ddb_redirect_dma(i32 %147, %struct.TYPE_7__* %150, %struct.TYPE_8__* %155)
  %157 = call i32 @mutex_unlock(i32* @redirect_lock)
  store i32 0, i32* %3, align 4
  br label %158

158:                                              ; preds = %132, %102, %82, %71, %65, %58, %43, %30
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i64 @ddb_unredirect(%struct.ddb_port*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ddb_redirect_dma(i32, %struct.TYPE_7__*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
